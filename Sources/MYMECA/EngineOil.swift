// Sources/MYMECA/EngineOil.swift
// E-ROK-Package
//
// Created by Fabien Koré

import Foundation

/// Viscosité d'huile moteur (normes SAE).
public enum EngineOilViscosity: String, Codable, CaseIterable, Identifiable, Sendable {
    case sae0w20  = "0W-20"
    case sae0w30  = "0W-30"
    case sae0w40  = "0W-40"
    case sae5w20  = "5W-20"
    case sae5w30  = "5W-30"
    case sae5w40  = "5W-40"
    case sae5w50  = "5W-50"
    case sae10w40 = "10W-40"
    case sae10w60 = "10W-60"
    case sae15w40 = "15W-40"
    case sae20w50 = "20W-50"

    public var id: String { rawValue }
}

/// Type / norme d'huile moteur.
public enum EngineOilType: String, Codable, CaseIterable, Identifiable, Sendable {
    // Synthèse
    case fullSynthetic       = "Synthétique totale"
    case semiSynthetic       = "Semi-synthétique"
    case mineral             = "Minérale"
    // Normes ACEA
    case aceaA1B1            = "ACEA A1/B1"
    case aceaA3B3            = "ACEA A3/B3"
    case aceaA3B4            = "ACEA A3/B4"
    case aceaA5B5            = "ACEA A5/B5"
    case aceaC1              = "ACEA C1"
    case aceaC2              = "ACEA C2"
    case aceaC3              = "ACEA C3"
    case aceaC4              = "ACEA C4"
    case aceaC5              = "ACEA C5"
    // Normes constructeurs
    case vwLongLife          = "VW Longlife III (504.00/507.00)"
    case vwLongLife4         = "VW Longlife IV (508.00/509.00)"
    case bmwLonglife04       = "BMW Longlife-04"
    case bmwLonglife17fe     = "BMW Longlife-17 FE+"
    case mercedesSheet229_5  = "Mercedes 229.5"
    case mercedesSheet229_51 = "Mercedes 229.51"
    case mercedesSheet229_52 = "Mercedes 229.52"
    case porscheA40          = "Porsche A40"
    case renaultRN0700       = "Renault RN0700"
    case renaultRN0720       = "Renault RN0720"
    case fordWSS             = "Ford WSS-M2C913-D"
    case gm_dexos1           = "GM Dexos1 Gen2"
    case gm_dexos2           = "GM Dexos2"
    case fiatF1              = "Fiat 9.55535-S1"
    case fiatF2              = "Fiat 9.55535-S3"

    public var id: String { rawValue }
}
