//
//  ProfileType.swift
//  E-ROK-Package
//
//  Created by Fabien Koré on 27/09/2025.
//


// Sources/SHIFT/ProfileType.swift
// E-ROK-Package
//
// Created by Fabien Koré on 07/09/2025.

import Foundation

public enum ProfileType: String, Codable, CaseIterable, Identifiable {
    case client = "Client"
    case dj = "DJ"
    case server = "Server"
    case serviceAgent = "ServiceAgent"
    case establishment = "Establishment"

    public var id: String { rawValue }

    public var displayName: String {
        switch self {
        case .client: return "Client"
        case .dj: return "DJ"
        case .server: return "Serveur"
        case .serviceAgent: return "Agent de service"
        case .establishment: return "Établissement"
        }
    }

    public var canSwitchToClientMode: Bool {
        switch self {
        case .dj, .server, .serviceAgent:
            return true
        case .client, .establishment:
            return false
        }
    }
}