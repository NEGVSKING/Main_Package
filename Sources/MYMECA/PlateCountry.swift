//
//  PlateCountry.swift
//  E-ROK-Package
//
//  Created by Fabien Koré on 27/09/2025.
//

import Foundation

public enum PlateCountry: String, Codable, CaseIterable, Identifiable {
    case france = "France"
    case germany = "Germany"
    case uk = "UK"
    case italy = "Italy"
    case spain = "Spain"
    case belgium = "Belgium"
    case portugal = "Portugal"
    case netherlands = "Netherlands"
    case switzerland = "Switzerland"
    case austria = "Austria"
    case sweden = "Sweden"
    case denmark = "Denmark"
    case norway = "Norway"
    case finland = "Finland"
    case ireland = "Ireland"
    case poland = "Poland"
    case czechRepublic = "Czech Republic"
    case hungary = "Hungary"
    case greece = "Greece"
    case romania = "Romania"
    case unitedStates = "United States"
    case canada = "Canada"
    case japan = "Japan"
    case morocco = "Morocco"
    case algeria = "Algeria"
    case tunisia = "Tunisia"
    case brazil = "Brazil"
    case australia = "Australia"
    case china = "China"
    case india = "India"
    case russia = "Russia"
    case mexico = "Mexico"
    case southAfrica = "South Africa"
    case turkey = "Turkey"
    case unitedArabEmirates = "United Arab Emirates"

    public var id: String { rawValue }
}
