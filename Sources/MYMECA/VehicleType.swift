// Sources/MYMECA/VehicleType.swift
// E-ROK-Package
//
// Created by Fabien Koré

import Foundation

/// Type de motorisation du véhicule.
public enum VehicleMotorType: String, Codable, CaseIterable, Identifiable, Sendable {
    case thermal       = "Thermique"
    case electric      = "Électrique"
    case hybrid        = "Hybride"
    case pluginHybrid  = "Hybride rechargeable (PHEV)"
    case mildHybrid    = "Mild Hybrid (MHEV)"
    case hydrogen      = "Hydrogène"

    public var id: String { rawValue }
}

/// Type de carrosserie / catégorie de véhicule.
public enum VehicleBodyType: String, Codable, CaseIterable, Identifiable, Sendable {
    case citycar       = "Citadine"
    case hatchback     = "Berline compacte"
    case sedan         = "Berline"
    case estate        = "Break"
    case suv           = "SUV"
    case crossover     = "Crossover"
    case coupe         = "Coupé"
    case cabriolet     = "Cabriolet"
    case minivan       = "Monospace"
    case van           = "Fourgon / Utilitaire"
    case pickup        = "Pick-up"
    case supercar      = "Supercar"
    case hypercar      = "Hypercar"
    case motorcycle    = "Moto"
    case quad          = "Quad"

    public var id: String { rawValue }
}
