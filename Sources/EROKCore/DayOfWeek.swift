// Sources/MYMECA/DayOfWeek.swift
// E-ROK-Package
//
// Created by Fabien Koré on 26/03/2025.

import Foundation

public enum DayOfWeek: String, Codable, CaseIterable, Identifiable {
    case monday = "Lundi"
    case tuesday = "Mardi"
    case wednesday = "Mercredi"
    case thursday = "Jeudi"
    case friday = "Vendredi"
    case saturday = "Samedi"
    case sunday = "Dimanche"

    public var id: String { rawValue }
}