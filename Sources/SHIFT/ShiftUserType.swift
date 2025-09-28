//
//  ShiftUserType.swift
//  E-ROK-Package
//
//  Created by Fabien Koré on 27/09/2025.
//


// Sources/SHIFT/ShiftUserType.swift
// E-ROK-Package
//
// Created by Fabien Koré on 13/07/2025.

import Foundation

public enum ShiftUserType: String, Codable, CaseIterable, Identifiable {
    case establishment = "Établissement"
    case dj = "DJ"
    case speaker = "Speaker"
    case server = "Serveur"
    case serviceAgent = "Service"
    case client = "Client"

    public var id: String { rawValue }

    public var displayName: String {
        switch self {
        case .establishment: return "Établissement"
        case .dj: return "DJ"
        case .speaker: return "Speaker"
        case .server: return "Serveur/Barman"
        case .serviceAgent: return "Service"
        case .client: return "Clubber"
        }
    }
}