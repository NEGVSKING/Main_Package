//
//  DayOfWeek.swift
//  E-ROK-Package
//
//  Created by Fabien Koré on 27/09/2025.
//


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

extension DayOfWeek {
    /// ✅ Convertir Date → DayOfWeek
    static func from(date: Date) -> DayOfWeek? {
        let calendar = Calendar.current
        let weekday = calendar.component(.weekday, from: date)
        
        // Calendar.weekday : 1=Dimanche, 2=Lundi, ..., 7=Samedi
        switch weekday {
        case 1: return .sunday
        case 2: return .monday
        case 3: return .tuesday
        case 4: return .wednesday
        case 5: return .thursday
        case 6: return .friday
        case 7: return .saturday
        default: return nil
        }
    }
}
