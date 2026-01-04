// EROKID.swift
// SHIFT App
//
// Created for SHIFT on 04/01/2026
// EROKID global minimal – identité partagée écosystème E-ROK
// birthDate est maintenant du type BirthDate (struct EROKCore)
// erokPseudo reste optionnel

import Foundation
import EROKCore // Pour Address et BirthDate

public struct EROKID: Codable, Identifiable {
    public let id: String // UID Firebase Auth
    public let email: String
    public let firstName: String // Prénom
    public let lastName: String // Nom
    public let erokPseudo: String? // Pseudo global E-ROK – optionnel
    public let birthDate: BirthDate // Date de naissance (struct BirthDate)
    public let address: Address? // Optionnel
    public let phoneNumber: String? // Optionnel, pour phone auth
    public let phoneVerified: Bool // Vérifié via phone auth
    public let nfcKey: String // Clé NFC/Wallet cross-apps
    public let recentTransactions: [EROKTransaction] // Historique récent

    // toDictionary pour écriture Firestore
    public func toDictionary() -> [String: Any] {
        var dict: [String: Any] = [
            "id": id,
            "email": email,
            "firstName": firstName,
            "lastName": lastName,
            "birthDate": birthDate.toDictionary(), // Utilise la méthode de BirthDate
            "phoneVerified": phoneVerified,
            "nfcKey": nfcKey,
            "recentTransactions": recentTransactions.map { $0.toDictionary() }
        ]
        if let erokPseudo = erokPseudo { dict["erokPseudo"] = erokPseudo }
        if let address = address { dict["address"] = address.toDictionary() }
        if let phoneNumber = phoneNumber { dict["phoneNumber"] = phoneNumber }
        return dict
    }

    public enum CodingKeys: String, CodingKey {
        case id, email, firstName, lastName, erokPseudo, birthDate, address, phoneNumber, phoneVerified, nfcKey, recentTransactions
    }

    public init(
        id: String,
        email: String,
        firstName: String,
        lastName: String,
        erokPseudo: String? = nil,
        birthDate: BirthDate,
        address: Address? = nil,
        phoneNumber: String? = nil,
        phoneVerified: Bool = false,
        nfcKey: String = UUID().uuidString,
        recentTransactions: [EROKTransaction] = []
    ) {
        guard !firstName.isEmpty, !lastName.isEmpty, !email.isEmpty else {
            fatalError("Prénom, nom et email obligatoires pour E-ROK ID")
        }
        self.id = id
        self.email = email
        self.firstName = firstName
        self.lastName = lastName
        self.erokPseudo = erokPseudo
        self.birthDate = birthDate
        self.address = address
        self.phoneNumber = phoneNumber
        self.phoneVerified = phoneVerified
        self.nfcKey = nfcKey
        self.recentTransactions = recentTransactions
    }

    // Init from dictionary (Firestore) – safe parsing
    public init(from dictionary: [String: Any]) throws {
        guard let id = dictionary["id"] as? String,
              let email = dictionary["email"] as? String,
              let firstName = dictionary["firstName"] as? String,
              let lastName = dictionary["lastName"] as? String,
              let birthDateDict = dictionary["birthDate"] as? [String: Any],
              let birthDate = try? BirthDate(from: birthDateDict)
        else {
            throw NSError(domain: "EROKID", code: -1, userInfo: [NSLocalizedDescriptionKey: "Champs obligatoires manquants"])
        }
        
        let addressDict = dictionary["address"] as? [String: Any]
        let address = addressDict.flatMap { try? Address(from: $0) }
        
        let phoneNumber = dictionary["phoneNumber"] as? String
        let phoneVerified = dictionary["phoneVerified"] as? Bool ?? false
        let nfcKey = dictionary["nfcKey"] as? String ?? UUID().uuidString
        let erokPseudo = dictionary["erokPseudo"] as? String
        
        let transactionsArray = dictionary["recentTransactions"] as? [[String: Any]] ?? []
        let recentTransactions = transactionsArray.compactMap { EROKTransaction(from: $0) }

        self.init(
            id: id,
            email: email,
            firstName: firstName,
            lastName: lastName,
            erokPseudo: erokPseudo,
            birthDate: birthDate,
            address: address,
            phoneNumber: phoneNumber,
            phoneVerified: phoneVerified,
            nfcKey: nfcKey,
            recentTransactions: recentTransactions
        )
    }

    // Codable conformance
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decode(String.self, forKey: .id)
        email = try container.decode(String.self, forKey: .email)
        firstName = try container.decode(String.self, forKey: .firstName)
        lastName = try container.decode(String.self, forKey: .lastName)
        erokPseudo = try container.decodeIfPresent(String.self, forKey: .erokPseudo)
        birthDate = try container.decode(BirthDate.self, forKey: .birthDate)
        address = try container.decodeIfPresent(Address.self, forKey: .address)
        phoneNumber = try container.decodeIfPresent(String.self, forKey: .phoneNumber)
        phoneVerified = try container.decode(Bool.self, forKey: .phoneVerified)
        nfcKey = try container.decode(String.self, forKey: .nfcKey)
        recentTransactions = try container.decode([EROKTransaction].self, forKey: .recentTransactions)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(email, forKey: .email)
        try container.encode(firstName, forKey: .firstName)
        try container.encode(lastName, forKey: .lastName)
        try container.encodeIfPresent(erokPseudo, forKey: .erokPseudo)
        try container.encode(birthDate, forKey: .birthDate)
        try container.encodeIfPresent(address, forKey: .address)
        try container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)
        try container.encode(phoneVerified, forKey: .phoneVerified)
        try container.encode(nfcKey, forKey: .nfcKey)
        try container.encode(recentTransactions, forKey: .recentTransactions)
    }

    // Calcul âge/majeur (via BirthDate.calculateAge())
    public var isAdult: Bool {
        birthDate.calculateAge() >= 18
    }
}
