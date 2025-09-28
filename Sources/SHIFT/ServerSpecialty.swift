//
//  ServerSpecialty.swift
//  E-ROK-Package
//
//  Created by Fabien Koré on 27/09/2025.
//


// Sources/SHIFT/ServerSpecialty.swift
// E-ROK-Package
//
// Created by Fabien Koré on 13/07/2025.

import Foundation

public enum ServerSpecialty: String, Codable, CaseIterable, Identifiable {
    case bar = "Bar"
    case cocktailRoom = "Salles cocktails"
    case vipSection = "Section VIP"
    case roomManagement = "Management salle"
    case tableService = "Service en salle"
    case mixology = "Mixologie"
    case banquetService = "Service banquet"
    case terraceService = "Service terrasse"
    case barManagement = "Gestion bar"
    case eventService = "Service événementiel"
    case bottleService = "Service bouteilles"
    case loungeService = "Service lounge"
    case catering = "Traiteur"
    case barista = "Barista"
    case sommelier = "Sommelier"

    public var id: String { rawValue }

    public var displayName: String {
        switch self {
        case .bar:
            return "Bar"
        case .cocktailRoom:
            return "Salles cocktails"
        case .vipSection:
            return "Section VIP"
        case .roomManagement:
            return "Management salle"
        case .tableService:
            return "Service en salle"
        case .mixology:
            return "Mixologie"
        case .banquetService:
            return "Service banquet"
        case .terraceService:
            return "Service terrasse"
        case .barManagement:
            return "Gestion bar"
        case .eventService:
            return "Service événementiel"
        case .bottleService:
            return "Service bouteilles"
        case .loungeService:
            return "Service lounge"
        case .catering:
            return "Traiteur"
        case .barista:
            return "Barista"
        case .sommelier:
            return "Sommelier"
        }
    }
}