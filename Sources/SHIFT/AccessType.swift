//
//  AccessType.swift
//  E-ROK-Package
//
//  Created by Fabien Koré on 27/09/2025.
//


// Sources/SHIFT/AccessType.swift
// E-ROK-Package
//
// Created by Fabien Koré on 13/07/2025.

import Foundation

public enum AccessType: String, Codable, CaseIterable, Identifiable {
    case normal = "Normal"
    case fastPass = "Fast Pass"
    case vip = "VIP"
    case free = "Free"
    case noAccess = "No Access"

    public var id: String { rawValue }

    public var displayName: String {
        rawValue
    }
}