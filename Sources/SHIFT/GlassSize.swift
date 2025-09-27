//
//  GlassSize.swift
//  E-ROK-Package
//
//  Created by Fabien Koré on 27/09/2025.
//


// Sources/SHIFT/GlassSize.swift
// E-ROK-Package
//
// Created by Fabien Koré on 07/09/2025.

import Foundation

public enum GlassSize: String, Codable, CaseIterable, Identifiable {
    case shot = "Shot"
    case short = "Short"
    case tumbler = "Tumbler"
    case highball = "Highball"
    case collins = "Collins"
    case rocks = "Rocks"
    case oldFashioned = "Old Fashioned"
    case martini = "Martini"
    case coupe = "Coupe"
    case flute = "Flute"
    case pint = "Pint"
    case halfPint = "Half Pint"
    case snifter = "Snifter"
    case goblet = "Goblet"
    case balloon = "Balloon"
    case cocktail = "Cocktail"
    case noSize = "No Size"

    public var id: String { rawValue }

    public var displayName: String {
        rawValue
    }

    public var volumeLiters: Double {
        switch self {
        case .shot: return 0.04
        case .short: return 0.2
        case .tumbler: return 0.25
        case .highball: return 0.3
        case .collins: return 0.35
        case .rocks: return 0.25
        case .oldFashioned: return 0.2
        case .martini: return 0.15
        case .coupe: return 0.15
        case .flute: return 0.15
        case .pint: return 0.568
        case .halfPint: return 0.284
        case .snifter: return 0.2
        case .goblet: return 0.3
        case .balloon: return 0.4
        case .cocktail: return 0.25 // Volume typique pour un cocktail
        case .noSize: return 0.0
        }
    }
}