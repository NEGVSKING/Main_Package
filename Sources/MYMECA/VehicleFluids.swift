// Sources/MYMECA/VehicleFluids.swift
// E-ROK-Package
//
// Created by Fabien Koré

import Foundation

/// Type de liquide de refroidissement (antigel).
public enum CoolantType: String, Codable, CaseIterable, Identifiable, Sendable {
    case g11Blue       = "G11 — Vert/Bleu (silicate)"
    case g12Red        = "G12 — Rouge/Rose (OAT carboxylate)"
    case g12Plus       = "G12+ — Rouge/Violet (HOAT)"
    case g12PlusPlus   = "G12++ — Rose (HOAT amélioré)"
    case g13Violet     = "G13 — Violet (glycérine + silicate)"
    case g30           = "G30 — Bleu (BASF Glysantin)"
    case g33           = "G33 — Vert (BASF Glysantin)"
    case g40           = "G40 — Rouge (BASF OAT)"
    case oatOrange     = "OAT Orange (GM DEX-COOL)"
    case hoatYellow    = "HOAT Jaune (Ford/Chrysler)"
    case premix50_50   = "Prémélangé 50/50"
    case concentrate   = "Concentré pur"

    public var id: String { rawValue }
}

/// Type de liquide de frein.
public enum BrakeFluidType: String, Codable, CaseIterable, Identifiable, Sendable {
    case dot3       = "DOT 3 — Point ébullition 205°C"
    case dot4       = "DOT 4 — Point ébullition 230°C"
    case dot4Plus   = "DOT 4+ — Point ébullition 260°C"
    case dot4Esp    = "DOT 4 ESP — Haute performance (ABS/ESP)"
    case dot5       = "DOT 5 — Silicone, non hygroscopique"
    case dot5_1     = "DOT 5.1 — Synthétique haute performance"

    public var id: String { rawValue }

    public var boilingPoint: String {
        switch self {
        case .dot3:    return "205°C (neuf) / 140°C (usagé)"
        case .dot4:    return "230°C (neuf) / 155°C (usagé)"
        case .dot4Plus: return "260°C (neuf) / 180°C (usagé)"
        case .dot4Esp: return "265°C (neuf) / 185°C (usagé)"
        case .dot5:    return "260°C (non hygroscopique)"
        case .dot5_1:  return "270°C (neuf) / 190°C (usagé)"
        }
    }
}

/// Type de liquide de direction assistée.
public enum PowerSteeringFluidType: String, Codable, CaseIterable, Identifiable, Sendable {
    case mineralPS     = "Huile minérale DA"
    case syntheticPS   = "Huile synthétique DA"
    case chf11s        = "CHF 11S (Pentosin)"
    case chf7_1        = "CHF 7.1 (Pentosin)"
    case elf           = "Elf Renaultmatic D3 SYN"
    case dexron3       = "Dexron III (transmission)"
    case elo           = "ELO (BMW)"

    public var id: String { rawValue }
}

/// Type de liquide de boîte de vitesses / transmission.
public enum TransmissionFluidType: String, Codable, CaseIterable, Identifiable, Sendable {
    case manualMTF      = "Huile BV manuelle MTF"
    case gl4            = "GL-4 (boîte manuelle)"
    case gl5            = "GL-5 (pont/différentiel)"
    case atf            = "ATF — Boîte automatique"
    case dsg            = "DSG G 052 182 (VW groupe)"
    case dctFord        = "Ford CPP D DCT"
    case dexronVI       = "Dexron VI (GM)"
    case mercon         = "Mercon LV (Ford)"
    case esso           = "Esso LT 71141 (ZF)"
    case shell          = "Shell M-1375.4 (ZF 8HP)"
    case cvtFluid       = "CVT Fluid (variateur)"
    case pdc            = "PDK (Porsche)"

    public var id: String { rawValue }
}

/// Type de liquide lave-glace.
public enum WindshieldFluidType: String, Codable, CaseIterable, Identifiable, Sendable {
    case summer         = "Lave-glace été"
    case winter         = "Lave-glace hiver (-20°C)"
    case winterPlus     = "Lave-glace grand froid (-40°C)"
    case allSeason      = "Lave-glace toutes saisons"
    case concentrate    = "Concentré diluer"
    case ready          = "Prêt à l'emploi"

    public var id: String { rawValue }
}
