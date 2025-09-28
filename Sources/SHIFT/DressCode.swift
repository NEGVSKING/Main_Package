//
//  DressCode.swift
//  E-ROK-Package
//
//  Created by Fabien Koré on 27/09/2025.
//


// Sources/SHIFT/DressCode.swift
// E-ROK-Package
//
// Created by Fabien Koré on 13/07/2025.

import Foundation

public enum DressCode: String, Codable, CaseIterable, Identifiable {
    case casual = "Casual"
    case smartCasual = "Smart Casual"
    case businessCasual = "Business Casual"
    case formal = "Formal"
    case blackTie = "Black Tie"
    case whiteTie = "White Tie"
    case cocktail = "Cocktail"
    case semiFormal = "Semi-Formal"
    case themed = "Themed"
    case elegant = "Elegant"
    case chic = "Chic"
    case sporty = "Sporty"
    case beachwear = "Beachwear"
    case vintage = "Vintage"
    case urban = "Urban"
    case glamorous = "Glamorous"
    case retro = "Retro"
    case festival = "Festival"
    case masquerade = "Masquerade"
    case casualChic = "Casual Chic"
    case eveningWear = "Evening Wear"
    case businessFormal = "Business Formal"
    case sportElegant = "Sport Elegant"
    case bohemian = "Bohemian"
    case goth = "Goth"
    case streetwear = "Streetwear"
    case ecoFriendly = "Eco-Friendly"
    case allWhite = "All White"
    case allBlack = "All Black"
    case colorCode = "Color Code"
    case formalCasual = "Formal Casual"
    case loungeWear = "Lounge Wear"
    case partyCasual = "Party Casual"
    case luxury = "Luxury"
    case noDressCode = "No Dress Code"

    public var id: String { rawValue }

    public var displayName: String {
        switch self {
        case .casual: return "Casual"
        case .smartCasual: return "Smart Casual"
        case .businessCasual: return "Business Casual"
        case .formal: return "Formal"
        case .blackTie: return "Black Tie"
        case .whiteTie: return "White Tie"
        case .cocktail: return "Cocktail"
        case .semiFormal: return "Semi-Formal"
        case .themed: return "Themed"
        case .elegant: return "Elegant"
        case .chic: return "Chic"
        case .sporty: return "Sporty"
        case .beachwear: return "Beachwear"
        case .vintage: return "Vintage"
        case .urban: return "Urban"
        case .glamorous: return "Glamorous"
        case .retro: return "Retro"
        case .festival: return "Festival"
        case .masquerade: return "Masquerade"
        case .casualChic: return "Casual Chic"
        case .eveningWear: return "Evening Wear"
        case .businessFormal: return "Business Formal"
        case .sportElegant: return "Sport Elegant"
        case .bohemian: return "Bohemian"
        case .goth: return "Goth"
        case .streetwear: return "Streetwear"
        case .ecoFriendly: return "Eco-Friendly"
        case .allWhite: return "All White"
        case .allBlack: return "All Black"
        case .colorCode: return "Color Code"
        case .formalCasual: return "Formal Casual"
        case .loungeWear: return "Lounge Wear"
        case .partyCasual: return "Party Casual"
        case .luxury: return "Luxury"
        case .noDressCode: return "No Dress Code"
        }
    }
}