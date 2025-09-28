//
//  EROKID.swift
//  E-ROK-Package
//
//  Created by Fabien Koré on 28/09/2025.
//


import Foundation
import EROKCore // Pour Address et Country

public struct EROKID: Codable, Identifiable {
    public let id: String // ID unique (géré par Firebase Auth)
    public let firstName: String // Prénom
    public let lastName: String // Nom
    public let erokPseudo: String // Pseudo global pour l’écosystème E-Rok
    public let birthDate: Date // Date de naissance
    public let address: Address? // Adresse optionnelle
    public let phoneNumber: String? // Numéro de téléphone optionnel
    public let nfcKey: String // Clé NFC pour Apple Wallet
    public let walletBalances: [String: Double] // Soldes par établissement/événement

    public func toDictionary() -> [String: Any] {
        var dict: [String: Any] = [
            "id": id,
            "firstName": firstName,
            "lastName": lastName,
            "erokPseudo": erokPseudo,
            "birthDate": birthDate.timeIntervalSince1970,
            "nfcKey": nfcKey,
            "walletBalances": walletBalances
        ]
        if let address = address { dict["address"] = address.toDictionary() }
        if let phoneNumber = phoneNumber { dict["phoneNumber"] = phoneNumber }
        return dict
    }

    public enum CodingKeys: String, CodingKey {
        case id
        case firstName
        case lastName
        case erokPseudo
        case birthDate
        case address
        case phoneNumber
        case nfcKey
        case walletBalances
    }

    public init(
        id: String,
        firstName: String,
        lastName: String,
        erokPseudo: String,
        birthDate: Date,
        address: Address? = nil,
        phoneNumber: String? = nil,
        nfcKey: String = UUID().uuidString,
        walletBalances: [String: Double] = [:]
    ) {
        guard !firstName.isEmpty, !lastName.isEmpty, !erokPseudo.isEmpty else {
            fatalError("Le nom, le prénom et le pseudo EROK ne peuvent pas être vides")
        }
        guard walletBalances.allSatisfy({ $0.value >= 0 && !$0.value.isNaN }) else {
            fatalError("Les soldes doivent être positifs ou nuls et non NaN")
        }
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.erokPseudo = erokPseudo
        self.birthDate = birthDate
        self.address = address
        self.phoneNumber = phoneNumber
        self.nfcKey = nfcKey
        self.walletBalances = walletBalances
    }

    // Codable conformance
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decode(String.self, forKey: .id)
        firstName = try container.decode(String.self, forKey: .firstName)
        lastName = try container.decode(String.self, forKey: .lastName)
        erokPseudo = try container.decode(String.self, forKey: .erokPseudo)
        let birthDateTimestamp = try container.decode(Double.self, forKey: .birthDate)
        birthDate = Date(timeIntervalSince1970: birthDateTimestamp)
        address = try container.decodeIfPresent(Address.self, forKey: .address)
        phoneNumber = try container.decodeIfPresent(String.self, forKey: .phoneNumber)
        nfcKey = try container.decode(String.self, forKey: .nfcKey)
        walletBalances = try container.decode([String: Double].self, forKey: .walletBalances)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(firstName, forKey: .firstName)
        try container.encode(lastName, forKey: .lastName)
        try container.encode(erokPseudo, forKey: .erokPseudo)
        try container.encode(birthDate.timeIntervalSince1970, forKey: .birthDate)
        try container.encodeIfPresent(address, forKey: .address)
        try container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)
        try container.encode(nfcKey, forKey: .nfcKey)
        try container.encode(walletBalances, forKey: .walletBalances)
    }

    // Vérifier si l’utilisateur est majeur
    public var isAdult: Bool {
        let calendar = Calendar.current
        let ageComponents = calendar.dateComponents([.year], from: birthDate, to: Date())
        guard let age = ageComponents.year else { return false }
        return age >= 18
    }
}
