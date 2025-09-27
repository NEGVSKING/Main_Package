//
//  AccessStatus.swift
//  E-ROK-Package
//
//  Created by Fabien Koré on 27/09/2025.
//


//
//  AccessStatus.swift
//  SHIFT.
//
//  Created by Fabien Koré on 13/07/2025.
//

import Foundation

enum AccessStatus: String, Codable, CaseIterable, Identifiable {
    case utilisable = "Utilisable"
    case utilise = "Utilisé" // Ajouté
    case expirer = "Expirer"
    case aRembourser = "A Rembourser"
    
    var id: String { rawValue }
    
    var displayName: String { rawValue }
}
