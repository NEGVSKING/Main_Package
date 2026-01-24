//
//  AgentRole.swift
//  E-ROK-Package
//
//  Created by Fabien Koré on 23/01/2026.
//


//
// AgentRole.swift
// E-ROK-Package
//
// Created by Fabien Koré on [Date]

import Foundation

public enum AgentRole: String, Codable, CaseIterable, Identifiable {
    case bouncer = "Videur"
    case cashier = "Caissier"
    case cloakroom = "Vestiaire"
    case valet = "Voiturier"
    
    public var id: String { rawValue }
    
    public var displayName: String {
        rawValue
    }
}
