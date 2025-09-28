// Sources/MYMECA/ServiceNettoyage.swift
// E-ROK-Package
//
// Created by Fabien Koré on 26/03/2025.

import Foundation

public enum ServiceNettoyage: String, Codable, CaseIterable, Identifiable, Equatable {
    case lavageExterieur = "Lavage extérieur"
    case lavageInterieur = "Lavage intérieur"
    case nettoyageComplet = "Nettoyage complet"
    case polissageCarrosserie = "Polissage carrosserie"
    case nettoyageVitres = "Nettoyage des vitres"
    case traitementSieges = "Traitement des sièges"
    case desodorisation = "Désodorisation"
    case nettoyageJantes = "Nettoyage des jantes"

    public var id: String { rawValue }

    public static func == (lhs: ServiceNettoyage, rhs: ServiceNettoyage) -> Bool {
        lhs.rawValue == rhs.rawValue
    }

    public var description: String {
        switch self {
        case .lavageExterieur:
            return "Nettoyage complet de la carrosserie, des jantes et des vitres extérieures."
        case .lavageInterieur:
            return "Aspiration des tapis, sièges et nettoyage du tableau de bord."
        case .nettoyageComplet:
            return "Lavage extérieur et intérieur pour une voiture impeccable."
        case .polissageCarrosserie:
            return "Polissage pour éliminer les micro-rayures et redonner de l’éclat."
        case .nettoyageVitres:
            return "Nettoyage des vitres intérieures et extérieures pour une clarté optimale."
        case .traitementSieges:
            return "Nettoyage ou conditionnement des sièges en tissu ou cuir."
        case .desodorisation:
            return "Élimination des odeurs dans l’habitacle pour un air frais."
        case .nettoyageJantes:
            return "Dégraissage et polissage des jantes pour un éclat maximal."
        }
    }
}