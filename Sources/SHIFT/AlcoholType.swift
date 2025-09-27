//
//  AlcoholType.swift
//  E-ROK-Package
//
//  Created by Fabien Koré on 27/09/2025.
//


// Sources/SHIFT/AlcoholType.swift
// E-ROK-Package
//
// Created by Fabien Koré on 07/09/2025.

import Foundation

public enum AlcoholType: String, Codable, CaseIterable, Identifiable {
    case beer = "Beer"
    case wineRed = "Red Wine"
    case wineWhite = "White Wine"
    case wineRose = "Rosé Wine"
    case sparkling = "Sparkling Wine"
    case champagne = "Champagne"
    case fortified = "Fortified Wine"
    case dessertWine = "Dessert Wine"
    case organicWine = "Organic Wine"
    case biodynamicWine = "Biodynamic Wine"
    case whisky = "Whisky"
    case vodka = "Vodka"
    case rum = "Rum"
    case gin = "Gin"
    case tequila = "Tequila"
    case brandy = "Brandy"
    case liqueur = "Liqueur"
    case absinthe = "Absinthe"
    case aquavit = "Aquavit"
    case arrack = "Arrack"
    case bitters = "Bitters"
    case cider = "Cider"
    case mead = "Mead"
    case sake = "Sake"
    case soju = "Soju"
    case shochu = "Shochu"
    case baijiu = "Baijiu"
    case makgeolli = "Makgeolli"
    case hardSeltzer = "Hard Seltzer"
    case kombuchaAlcoolise = "Kombucha Alcoolisé"
    case nonAlcoholic = "Non-Alcoholic"
    case cocktail = "Cocktail"
    case soda = "Soda"
    case noType = "No Type"

    public var id: String { rawValue }

    public var displayName: String {
        switch self {
        case .beer: return "Bière"
        case .wineRed: return "Vin rouge"
        case .wineWhite: return "Vin blanc"
        case .wineRose: return "Vin rosé"
        case .sparkling: return "Vin pétillant"
        case .champagne: return "Champagne"
        case .fortified: return "Vin fortifié"
        case .dessertWine: return "Vin de dessert"
        case .organicWine: return "Vin bio"
        case .biodynamicWine: return "Vin biodynamique"
        case .whisky: return "Whisky"
        case .vodka: return "Vodka"
        case .rum: return "Rhum"
        case .gin: return "Gin"
        case .tequila: return "Tequila"
        case .brandy: return "Brandy"
        case .liqueur: return "Liqueur"
        case .absinthe: return "Absinthe"
        case .aquavit: return "Aquavit"
        case .arrack: return "Arrack"
        case .bitters: return "Bitters"
        case .cider: return "Cidre"
        case .mead: return "Hydromel"
        case .sake: return "Sake"
        case .soju: return "Soju"
        case .shochu: return "Shochu"
        case .baijiu: return "Baijiu"
        case .makgeolli: return "Makgeolli"
        case .hardSeltzer: return "Hard Seltzer"
        case .kombuchaAlcoolise: return "Kombucha alcoolisé"
        case .nonAlcoholic: return "Sans alcool"
        case .cocktail: return "Cocktail"
        case .soda: return "Soda"
        case .noType: return "Aucun type"
        }
    }
}