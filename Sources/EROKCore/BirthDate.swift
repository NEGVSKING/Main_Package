//
//  BirthDate.swift
//  E-ROK-Package
//
//  Created by Fabien Koré on 03/08/2025.
//


// Sources/EROKCore/BirthDate.swift
// E-ROK-Package
//
// Created by Fabien Koré on 10/06/2025.

import Foundation

public struct BirthDate: Codable, Equatable {
    public let day: Int
    public let month: Month
    public let year: Int
    
    public init(day: Int, month: Month, year: Int) {
        self.day = day
        self.month = month
        self.year = year
    }
    
    public func toDate() -> Date? {
        var components = DateComponents()
        components.day = day
        components.month = month.number
        components.year = year
        components.hour = 0
        components.minute = 0
        components.second = 0
        return Calendar.current.date(from: components)
    }
    
    public func calculateAge() -> Int {
        guard let date = toDate() else { return 0 }
        let calendar = Calendar.current
        let now = Date()
        let ageComponents = calendar.dateComponents([.year], from: date, to: now)
        return ageComponents.year ?? 0
    }
    
    public func formattedAge(style: AgeFormatStyle) -> String {
        let age = calculateAge()
        switch style {
        case .short:
            return "âge: \(age)"
        case .long:
            return "\(age) ans"
        }
    }
    
    public var isValid: Bool {
        return day >= 1 && day <= month.daysInMonth(year: year)
    }
    
    public func toDictionary() -> [String: Any] {
        return [
            "day": day,
            "month": month.rawValue,
            "year": year
        ]
    }
    
    public enum CodingKeys: String, CodingKey {
        case day
        case month
        case year
    }
}