
// EROKTransaction.swift
// E-ROK-Package
//
// Created by Grok on 03/01/2026.
// Ajouté pour l'historique transactions centralisé cross-apps E-ROK
// (SHIFT, FIT, MYMECA, etc.) avec support contextes variés (club, magasin, promo, recharge...)

import Foundation
import FirebaseAuth
import FirebaseFirestore
import EROKCore

public struct EROKTransaction: Codable, Identifiable, Hashable {
    @DocumentID public var id: String?                    // Auto-ID Firestore ou UUID (optionnel pour new docs)
    public let appName: String                            // Ex. "SHIFT", "FIT", "MYMECA" – pour tri par app
    public let title: String                              // Ex. "Bouteille Moët", "Abonnement SHIFT+", "Achat robe"
    public let amount: Double                             // Positif = crédit/recharge, négatif = débit
    public let date: Timestamp                            // Date/heure transaction (Firestore Timestamp pour tri/realtime)
    public let type: String?                              // Optionnel : "consommation", "pourboire", "abonnement", "enchère", "recharge", "achat"
    public let contextType: String                        // Ex. "club", "magasin", "promo", "recharge", "autre"
    public let contextId: String                          // ID unique du contexte (clubId, magasinId, promoId, etc.)
    public let contextName: String?                       // Nom lisible (ex. "Le Night Club", "Boutique FIT Paris", "Promo Nouvel An")
    public let description: String?                       // Détails supplémentaires
    public let soldeApres: Double?                        // Solde wallet après transaction (pour traçabilité UI)

    // MARK: - CodingKeys (pour personnalisation si besoin)
    enum CodingKeys: String, CodingKey {
        case id
        case appName
        case title
        case amount
        case date
        case type
        case contextType
        case contextId
        case contextName
        case description
        case soldeApres
    }

    // MARK: - Init principal
    public init(
        id: String? = nil,
        appName: String,
        title: String,
        amount: Double,
        date: Timestamp = Timestamp(),
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

    // MARK: - Convenience init depuis Firestore data (pour sécurité parsing)
    public init?(from dictionary: [String: Any]) {
        guard
            let appName = dictionary["appName"] as? String,
            let title = dictionary["title"] as? String,
            let amount = dictionary["amount"] as? Double,
            let date = dictionary["date"] as? Timestamp,
            let contextType = dictionary["contextType"] as? String,
            let contextId = dictionary["contextId"] as? String
        else {
            return nil
        }

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

    // MARK: - toDictionary pour écriture Firestore
    public func toDictionary() -> [String: Any] {
        var dict: [String: Any] = [
            "appName": appName,
            "title": title,
            "amount": amount,
            "date": date,
            "contextType": contextType,
            "contextId": contextId
        ]
        if let type = type { dict["type"] = type }
        if let contextName = contextName { dict["contextName"] = contextName }
        if let description = description { dict["description"] = description }
        if let soldeApres = soldeApres { dict["soldeApres"] = soldeApres }
        return dict
    }

    // MARK: - Hashable conformance (pour List SwiftUI)
    public func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }

    public static func == (lhs: EROKTransaction, rhs: EROKTransaction) -> Bool {
        lhs.id == rhs.id
    }
}
