// Sources/SHIFT/ServerStatus.swift
// E-ROK-Package
//
// Created by Fabien Koré on 06/09/2025.

import Foundation

public enum ServerStatus: String, Codable, CaseIterable, Identifiable {
    case enRoute = "EnRoute"
    case sePrépare = "SePrépare"
    case enService = "EnService"
    case enPause = "EnPause"
    case aTerminé = "ATerminé"

    public var id: String { rawValue }

    public var displayName: String {
        switch self {
        case .enRoute:
            return "En route vers l'établissement"
        case .sePrépare:
            return "Se prépare"
        case .enService:
            return "En service"
        case .enPause:
            return "En pause"
        case .aTerminé:
            return "A terminé son service"
        }
    }
}