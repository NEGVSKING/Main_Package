//
//  EventStatus.swift
//  E-ROK-Package
//
//  Created by Fabien Koré on 27/09/2025.
//


// Sources/SHIFT/EventStatus.swift
// E-ROK-Package
//
// Created by Fabien Koré on 07/09/2025.

import Foundation

public enum EventStatus: String, Codable, CaseIterable, Identifiable {
    case upcoming = "Upcoming"
    case started = "Started"
    case climax = "Climax"
    case ended = "Ended"

    public var id: String { rawValue }

    public var displayName: String {
        switch self {
        case .upcoming: return "À venir"
        case .started: return "Commencé"
        case .climax: return "Apogée"
        case .ended: return "Terminé"
        }
    }
}