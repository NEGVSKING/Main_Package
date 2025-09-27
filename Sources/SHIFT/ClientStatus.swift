// Sources/SHIFT/ClientStatus.swift
// E-ROK-Package
//
// Created by Fabien Koré on 06/09/2025.

import Foundation

public enum ClientStatus: Codable, Identifiable {
    case sePrépare
    case surLeChemin
    case dansLEtablissement(establishmentType: EstablishmentType)
    case aLEvènement(eventType: EventType)
    case neSortPasCeSoir

    public var id: String {
        switch self {
        case .sePrépare:
            return "SePrépare"
        case .surLeChemin:
            return "SurLeChemin"
        case .dansLEtablissement(let establishmentType):
            return "DansLEtablissement_\(establishmentType.rawValue)"
        case .aLEvènement(let eventType):
            return "ALEvènement_\(eventType.rawValue)"
        case .neSortPasCeSoir:
            return "NeSortPasCeSoir"
        }
    }

    public var displayName: String {
        switch self {
        case .sePrépare:
            return "Se prépare"
        case .surLeChemin:
            return "Sur le chemin"
        case .dansLEtablissement(let establishmentType):
            return "Est dans \(establishmentType.isFeminine ? "une" : "un") \(establishmentType.displayName)"
        case .aLEvènement(let eventType):
            return "Participe à \(eventType.isFeminine ? "une" : "un") \(eventType.displayName)"
        case .neSortPasCeSoir:
            return "Ne sort pas ce soir"
        }
    }

    private enum CodingKeys: String, CodingKey {
        case type
        case establishmentType
        case eventType
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        let type = try container.decode(String.self, forKey: .type)

        switch type {
        case "SePrépare":
            self = .sePrépare
        case "SurLeChemin":
            self = .surLeChemin
        case "DansLEtablissement":
            let establishmentType = try container.decode(EstablishmentType.self, forKey: .establishmentType)
            self = .dansLEtablissement(establishmentType: establishmentType)
        case "ALEvènement":
            let eventType = try container.decode(EventType.self, forKey: .eventType)
            self = .aLEvènement(eventType: eventType)
        case "NeSortPasCeSoir":
            self = .neSortPasCeSoir
        default:
            throw DecodingError.dataCorruptedError(forKey: .type, in: container, debugDescription: "Invalid status type")
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        switch self {
        case .sePrépare:
            try container.encode("SePrépare", forKey: .type)
        case .surLeChemin:
            try container.encode("SurLeChemin", forKey: .type)
        case .dansLEtablissement(let establishmentType):
            try container.encode("DansLEtablissement", forKey: .type)
            try container.encode(establishmentType, forKey: .establishmentType)
        case .aLEvènement(let eventType):
            try container.encode("ALEvènement", forKey: .type)
            try container.encode(eventType, forKey: .eventType)
        case .neSortPasCeSoir:
            try container.encode("NeSortPasCeSoir", forKey: .type)
        }
    }
}