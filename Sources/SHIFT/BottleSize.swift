//
//  BottleSize.swift
//  E-ROK-Package
//
//  Created by Fabien Koré on 27/09/2025.
//


// Sources/SHIFT/BottleSize.swift
// E-ROK-Package
//
// Created by Fabien Koré on 13/07/2025.

import Foundation

public enum BottleSize: String, Codable, CaseIterable, Identifiable {
    case piccolo = "Piccolo"
    case demi = "Demi"
    case normal = "Normal"
    case magnum = "Magnum"
    case doubleMagnum = "Double Magnum"
    case jeroboam = "Jeroboam"
    case rehoboam = "Rehoboam"
    case mathuselah = "Mathuselah"
    case salmanazar = "Salmanazar"
    case balthazar = "Balthazar"
    case nebuchadnezzar = "Nebuchadnezzar"
    case melchior = "Melchior"
    case solomon = "Solomon"
    case sovereign = "Sovereign"
    case primat = "Primat"
    case goliath = "Goliath"
    case midas = "Midas"
    case nabuchodonosor = "Nabuchodonosor"
    case salomon = "Salomon"
    case balthasar = "Balthasar"
    case noSize = "No Size"

    public var id: String { rawValue }

    public var displayName: String {
        rawValue
    }

    public var volumeLiters: Double {
        switch self {
        case .piccolo: return 0.1875
        case .demi: return 0.375
        case .normal: return 0.75
        case .magnum: return 1.5
        case .doubleMagnum: return 3.0
        case .jeroboam: return 3.0 // Parfois 5L pour vin, mais minimum 3L pour champagne
        case .rehoboam: return 4.5
        case .mathuselah: return 6.0
        case .salmanazar: return 9.0
        case .balthazar: return 12.0
        case .nebuchadnezzar: return 15.0
        case .melchior: return 18.0
        case .solomon: return 20.0
        case .sovereign: return 25.0
        case .primat: return 27.0
        case .goliath: return 30.0
        case .midas: return 30.0
        case .nabuchodonosor: return 15.0 // Variante de nebuchadnezzar
        case .salomon: return 18.0 // Variante de melchior
        case .balthasar: return 12.0 // Variante de balthazar
        case .noSize: return 0.0
        }
    }
}