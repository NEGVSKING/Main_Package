
// EROKTransaction.swift
// E-ROK-Package
//
// Created by Grok on 03/01/2026.
// Version sans Firebase – Date au lieu de Timestamp, id optionnel manuel
// Historique transactions centralisé cross-apps E-ROK (SHIFT, FIT, MYMECA, etc.)

import Foundation

public struct EROKTransaction: Codable, Identifiable, Hashable {
    public var id: String?                                // Auto-ID Firestore ou UUID (généré dans l'app)
    public let appName: String                            // Ex. "SHIFT", "FIT", "MYMECA"
    public let title: String                              // Ex. "Bouteille Moët", "Abonnement SHIFT+"
    public let amount: Double                             // Positif = crédit, négatif = débit
    public let date: Date                                 // Date/heure transaction (standard Date)
    public let type: String?                              // Optionnel : "consommation", "pourboire", "abonnement", "enchère", "recharge"
    public let contextType: String                        // Ex. "club", "magasin", "promo", "recharge"
    public let contextId: String                          // ID unique du contexte
    public let contextName: String?                       // Nom lisible
    public let description: String?                       // Détails supplémentaires
    public let soldeApres: Double?                        // Solde après transaction

    // MARK: - CodingKeys
    enum CodingKeys: String, CodingKey {
        case id, appName, title, amount, date, type, contextType, contextId, contextName, description, soldeApres
    }

    // MARK: - Init principal
    public init(
        id: String? = nil,
        appName: String,
        title: String,
        amount: Double,
        date: Date = Date(),
        type: String? = nil,
        contextType: String,
        contextId: String,
        contextName: String? = nil,
        description: String? = nil,
        soldeApres: Double? = nil
    ) {
        self.id = id
        self.appName = appName
        self.title = title
        self.amount = amount
        self.date = date
        self.type = type
        self.contextType = contextType
        self.contextId = contextId
        self.contextName = contextName
        self.description = description
        self.soldeApres = soldeApres
    }

    // MARK: - Convenience init depuis dictionary (Firestore dans l'app)
    public init?(from dictionary: [String: Any]) {
        guard
            let appName = dictionary["appName"] as? String,
            let title = dictionary["title"] as? String,
            let amount = dictionary["amount"] as? Double,
            let dateTimestamp = dictionary["date"] as? Double,
            let contextType = dictionary["contextType"] as? String,
            let contextId = dictionary["contextId"] as? String
        else {
            return nil
        }

        let date = Date(timeIntervalSince1970: dateTimestamp)

        self.id = dictionary["id"] as? String
        self.appName = appName
        self.title = title
        self.amount = amount
        self.date = date
        self.type = dictionary["type"] as? String
        self.contextType = contextType
        self.contextId = contextId
        self.contextName = dictionary["contextName"] as? String
        self.description = dictionary["description"] as? String
        self.soldeApres = dictionary["soldeApres"] as? Double
    }

    // MARK: - toDictionary pour écriture Firestore (dans l'app)
    public func toDictionary() -> [String: Any] {
        var dict: [String: Any] = [
            "appName": appName,
            "title": title,
            "amount": amount,
            "date": date.timeIntervalSince1970,
            "contextType": contextType,
            "contextId": contextId
        ]
        if let id = id { dict["id"] = id }
        if let type = type { dict["type"] = type }
        if let contextName = contextName { dict["contextName"] = contextName }
        if let description = description { dict["description"] = description }
        if let soldeApres = soldeApres { dict["soldeApres"] = soldeApres }
        return dict
    }

    // MARK: - Hashable (pour List SwiftUI)
    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }

    public static func == (lhs: EROKTransaction, rhs: EROKTransaction) -> Bool {
        lhs.id == rhs.id
    }
}
