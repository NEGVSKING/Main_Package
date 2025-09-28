// Sources/MYMECA/SpecialiteGarage.swift
// E-ROK-Package
//
// Created by Fabien Koré on 26/03/2025.

import Foundation

public enum SpecialiteGarage: String, Codable, CaseIterable, Identifiable {
    case mecaniqueGenerale = "Mécanique générale"
    case carrosserie = "Carrosserie"
    case peinture = "Peinture"
    case electriciteAuto = "Électricité auto"
    case climatisation = "Climatisation"
    case pneus = "Pneus"
    case freins = "Freins"
    case diagnostic = "Diagnostic électronique"
    case moteur = "Réparation moteur"
    case transmission = "Transmission"
    case suspension = "Suspension"
    case echappement = "Échappement"
    case vitrage = "Vitrage"
    case tuning = "Tuning"
    case vehiculesElectriques = "Véhicules électriques"
    case controleTechnique = "Préparation contrôle technique"

    public var id: String { rawValue }
}