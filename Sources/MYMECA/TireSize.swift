// Sources/MYMECA/TireSize.swift
// E-ROK-Package
//
// Created by Fabien Koré

import Foundation

/// Tailles de pneus courantes au format standard (Largeur/Série R Jante).
public enum TireSize: String, Codable, CaseIterable, Identifiable, Sendable {
    // Citadines / Compactes
    case t155_70R13  = "155/70 R13"
    case t165_70R14  = "165/70 R14"
    case t175_65R14  = "175/65 R14"
    case t185_65R15  = "185/65 R15"
    case t195_65R15  = "195/65 R15"
    case t195_55R16  = "195/55 R16"
    case t205_55R16  = "205/55 R16"
    case t205_60R16  = "205/60 R16"
    case t215_55R17  = "215/55 R17"
    case t215_60R17  = "215/60 R17"
    case t225_45R17  = "225/45 R17"
    case t225_50R17  = "225/50 R17"
    case t225_55R17  = "225/55 R17"
    // Berlines / SUV
    case t235_45R18  = "235/45 R18"
    case t235_50R18  = "235/50 R18"
    case t235_55R18  = "235/55 R18"
    case t245_45R18  = "245/45 R18"
    case t255_45R18  = "255/45 R18"
    case t255_55R18  = "255/55 R18"
    case t235_40R19  = "235/40 R19"
    case t245_40R19  = "245/40 R19"
    case t255_40R19  = "255/40 R19"
    case t265_50R19  = "265/50 R19"
    case t275_40R19  = "275/40 R19"
    case t255_35R20  = "255/35 R20"
    case t265_45R20  = "265/45 R20"
    case t275_45R20  = "275/45 R20"
    case t295_40R20  = "295/40 R20"
    case t285_40R21  = "285/40 R21"
    case t295_35R21  = "295/35 R21"
    case t305_30R21  = "305/30 R21"
    // SUV / Pick-up large
    case t265_60R18  = "265/60 R18"
    case t275_55R19  = "275/55 R19"
    case t285_45R21  = "285/45 R21"
    case t315_35R22  = "315/35 R22"
    case t285_35R22  = "285/35 R22"
    // Supercars
    case t245_35R19  = "245/35 R19"
    case t305_25R20  = "305/25 R20"
    case t335_25R22  = "335/25 R22"
    case t345_30R21  = "345/30 R21"

    public var id: String { rawValue }

    /// Largeur du pneu en mm.
    public var width: Int {
        Int(rawValue.prefix(3)) ?? 0
    }

    /// Diamètre de jante en pouces.
    public var rimDiameter: Int {
        guard let r = rawValue.range(of: "R") else { return 0 }
        return Int(rawValue[r.upperBound...]) ?? 0
    }
}
