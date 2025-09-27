// Sources/SHIFT/DJStatus.swift
// E-ROK-Package
//
// Created by Fabien Koré on 06/09/2025.

import Foundation

public enum DJStatus: String, Codable, CaseIterable, Identifiable {
    case seDirigeVersLeClub = "SeDirigeVersLeClub"
    case sePrépare = "SePrépare"
    case commenceSonSet = "CommenceSonSet"
    case enPleinSet = "EnPleinSet"
    case aFiniSonSet = "AFiniSonSet"

    public var id: String { rawValue }

    public var displayName: String {
        switch self {
        case .seDirigeVersLeClub:
            return "Se dirige vers le club"
        case .sePrépare:
            return "Se prépare"
        case .commenceSonSet:
            return "Commence son set"
        case .enPleinSet:
            return "En plein set"
        case .aFiniSonSet:
            return "A fini son set"
        }
    }
}