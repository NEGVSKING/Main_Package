// Sources/MYMECA/ChargingType.swift
// E-ROK-Package
//
// Created by Fabien Koré

import Foundation

/// Mode / vitesse de recharge électrique.
public enum ChargingType: String, Codable, CaseIterable, Identifiable, Sendable {
    case mode1          = "Mode 1 — Prise domestique (2,3 kW)"
    case mode2          = "Mode 2 — Prise renforcée EVSE (3,7 kW)"
    case mode3AC7       = "Mode 3 — AC 7,4 kW (Wallbox monophasé)"
    case mode3AC11      = "Mode 3 — AC 11 kW (Wallbox triphasé)"
    case mode3AC22      = "Mode 3 — AC 22 kW (Wallbox triphasé rapide)"
    case mode4DC50      = "Mode 4 — DC 50 kW (Rapide)"
    case mode4DC100     = "Mode 4 — DC 100 kW (Très rapide)"
    case mode4DC150     = "Mode 4 — DC 150 kW (Ultra rapide)"
    case mode4DC250     = "Mode 4 — DC 250 kW (Supercharger V3)"
    case mode4DC350     = "Mode 4 — DC 350 kW (HPC)"
    case wireless       = "Recharge sans fil (inductive)"
    case vehicleToGrid  = "Vehicle-to-Grid (V2G)"
    case vehicleToHome  = "Vehicle-to-Home (V2H)"

    public var id: String { rawValue }
}

/// Prise de recharge électrique.
public enum ChargingConnector: String, Codable, CaseIterable, Identifiable, Sendable {
    // AC
    case type1          = "Type 1 — J1772 (AC)"
    case type2          = "Type 2 — Mennekes (AC)"
    case schuko         = "Schuko — Prise domestique"
    case ceeFBleu       = "CEE 7/5 — Prise bleue renforcée"
    // DC
    case ccs1           = "CCS Combo 1 — SAE (DC)"
    case ccs2           = "CCS Combo 2 — IEC 62196 (DC)"
    case chaDeMo        = "CHAdeMO (DC)"
    case gbt            = "GB/T — Standard chinois (DC)"
    case teslaPropriety = "Tesla NACS / Supercharger"
    case nacs           = "NACS — North American Charging Standard"
    // Sans fil
    case qi             = "Qi — Induction (sans fil)"
    case saeJ2954       = "SAE J2954 — Induction standardisée"

    public var id: String { rawValue }

    /// Marques associées si la prise est exclusive ou fortement liée.
    public var associatedBrands: [String] {
        switch self {
        case .teslaPropriety, .nacs:
            return ["Tesla"]
        case .chaDeMo:
            return ["Nissan", "Mitsubishi", "Toyota", "Kia (anciens modèles)"]
        case .gbt:
            return ["BYD", "NIO", "Xpeng", "Li Auto"]
        case .ccs1:
            return ["Chevrolet", "Ford (anciens)", "Jeep", "Chrysler"]
        case .ccs2:
            return ["Renault", "Peugeot", "Citroën", "Volkswagen", "BMW", "Mercedes", "Audi", "Hyundai", "Kia", "Volvo", "Porsche", "Jaguar", "Ford (Europe)"]
        default:
            return []
        }
    }
}
