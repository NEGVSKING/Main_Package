//
//  Month.swift
//  E-ROK-Package
//
//  Created by Fabien Koré on 03/08/2025.
//


// Sources/EROKCore/Month.swift
// E-ROK-Package
//
// Created by Fabien Koré on 20/07/2025.

import Foundation

public enum Month: String, CaseIterable, Identifiable, Codable {
    case janvier, février, mars, avril, mai, juin
    case juillet, août, septembre, octobre, novembre, décembre
    
    public var id: String { rawValue }
    
    public var number: Int {
        switch self {
        case .janvier: return 1
        case .février: return 2
        case .mars: return 3
        case .avril: return 4
        case .mai: return 5
        case .juin: return 6
        case .juillet: return 7
        case .août: return 8
        case .septembre: return 9
        case .octobre: return 10
        case .novembre: return 11
        case .décembre: return 12
        }
    }
    
    public func daysInMonth(year: Int) -> Int {
        switch self {
        case .février:
            let isLeapYear = (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)
            return isLeapYear ? 29 : 28
        case .avril, .juin, .septembre, .novembre:
            return 30
        default:
            return 31
        }
    }
}