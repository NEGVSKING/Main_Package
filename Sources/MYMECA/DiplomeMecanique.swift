// Sources/MYMECA/DiplomeMecanique.swift
// E-ROK-Package
//
// Created by Fabien Koré on 26/03/2025.

import Foundation

public enum DiplomeMecanique: String, Codable, CaseIterable, Identifiable {
    case capMaintenance = "CAP Maintenance des Véhicules"
    case bacProMaintenance = "Bac Pro Maintenance des Véhicules"
    case btsMva = "BTS Maintenance des Véhicules Automobiles"
    case btsMecanique = "BTS Mécanique"
    case cqpMecanicien = "CQP Mécanicien de Maintenance Automobile"
    case cqpTechnicien = "CQP Technicien Expert Après-Vente"
    case licenceProMecanique = "Licence Pro Mécanique"
    case ingenieurMecanique = "Diplôme d'Ingénieur en Mécanique"
    case formationInterne = "Formation Interne Garage"
    case sansDiplome = "Sans diplôme formel"

    public var id: String { rawValue }
}