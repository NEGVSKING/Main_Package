// Sources/MYMECA/FuelType.swift
// E-ROK-Package
//
// Created by Fabien Koré

import Foundation

/// Type de carburant du véhicule.
public enum FuelType: String, Codable, CaseIterable, Identifiable, Sendable {
    // Thermiques classiques
    case gasoline       = "Essence SP95"
    case gasolineE10    = "Essence SP95-E10"
    case gasolineE85    = "Superéthanol E85"
    case gasolineSP98   = "Essence SP98"
    case diesel         = "Diesel B7"
    case dieselB10      = "Diesel B10"
    case dieselB20      = "Biodiesel B20"
    case dieselB30      = "Biodiesel B30"
    // Gaz
    case lpg            = "GPL (LPG)"
    case cng            = "GNV (CNG)"
    case lng            = "GNL (LNG)"
    case hydrogen       = "Hydrogène"
    // Électrique
    case electric       = "Électrique"
    // Hybrides
    case hybridGasoline = "Hybride Essence"
    case hybridDiesel   = "Hybride Diesel"

    public var id: String { rawValue }

    public var isElectricOrHybrid: Bool {
        switch self {
        case .electric, .hybridGasoline, .hybridDiesel, .hydrogen: return true
        default: return false
        }
    }
}
