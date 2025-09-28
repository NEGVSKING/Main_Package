// Sources/MYMECA/PlateCountry.swift
// E-ROK-Package
//
// Created by Fabien Koré on 26/03/2025.

import Foundation

public enum PlateCountry: String, Codable, CaseIterable, Identifiable {
    case france = "France"
    case germany = "Germany"
    case uk = "UK"
    case italy = "Italy"
    case spain = "Spain"
    case belgium = "Belgium"

    public var id: String { rawValue }
}