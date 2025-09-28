//
//  NightTheme.swift
//  E-ROK-Package
//
//  Created by Fabien Koré on 27/09/2025.
//


// Sources/SHIFT/NightTheme.swift
// E-ROK-Package
//
// Created by Fabien Koré on 13/07/2025.

import Foundation
import EROKUI
import EROKCore

public enum NightTheme: String, Codable, CaseIterable, Identifiable {
    case eighties = "80s"
    case halloween = "Halloween"
    case whiteParty = "White Party"
    case blackAndWhite = "Black & White"
    case neon = "Neon"
    case masquerade = "Masquerade"
    case beach = "Beach"
    case retro = "Retro"
    case hollywood = "Hollywood"
    case disco = "Disco"
    case vegas = "Vegas"
    case tropical = "Tropical"
    case carnival = "Carnival"
    case greatGatsby = "Great Gatsby"
    case space = "Space"
    case fairyTale = "Fairy Tale"
    case superheroes = "Superheroes"
    case pirates = "Pirates"
    case western = "Western"
    case luau = "Luau"
    case glowInTheDark = "Glow in the Dark"
    case movieNight = "Movie Night"
    case casinoNight = "Casino Night"
    case redCarpet = "Red Carpet"
    case roaringTwenties = "Roaring Twenties"
    case seventies = "70s"
    case nineties = "90s"
    case zeroZero = "2000s"
    case hipHopNight = "Hip-Hop Night"
    case latinNight = "Latin Night"
    case reggaeNight = "Reggae Night"
    case edmNight = "EDM Night"
    case rockNight = "Rock Night"
    case popNight = "Pop Night"
    case jazzNight = "Jazz Night"
    case karaokeNight = "Karaoke Night"
    case ladiesNight = "Ladies Night"
    case gentlemenNight = "Gentlemen Night"
    case prideNight = "Pride Night"
    case halloweenHorror = "Halloween Horror"
    case christmas = "Christmas"
    case newYear = "New Year"
    case valentines = "Valentine's"
    case stPatrick = "St. Patrick"
    case easter = "Easter"
    case summerKickoff = "Summer Kickoff"
    case backToSchool = "Back to School"
    case thanksgiving = "Thanksgiving"
    case blackFridayParty = "Black Friday Party"
    case winterWonderland = "Winter Wonderland"
    case noTheme = "No Theme"

    public var id: String { rawValue }

    public var displayName: String {
        switch self {
        case .eighties: return "80s"
        case .halloween: return "Halloween"
        case .whiteParty: return "White Party"
        case .blackAndWhite: return "Black & White"
        case .neon: return "Neon"
        case .masquerade: return "Masquerade"
        case .beach: return "Beach"
        case .retro: return "Retro"
        case .hollywood: return "Hollywood"
        case .disco: return "Disco"
        case .vegas: return "Vegas"
        case .tropical: return "Tropical"
        case .carnival: return "Carnival"
        case .greatGatsby: return "Great Gatsby"
        case .space: return "Space"
        case .fairyTale: return "Fairy Tale"
        case .superheroes: return "Superheroes"
        case .pirates: return "Pirates"
        case .western: return "Western"
        case .luau: return "Luau"
        case .glowInTheDark: return "Glow in the Dark"
        case .movieNight: return "Movie Night"
        case .casinoNight: return "Casino Night"
        case .redCarpet: return "Red Carpet"
        case .roaringTwenties: return "Roaring Twenties"
        case .seventies: return "70s"
        case .nineties: return "90s"
        case .zeroZero: return "2000s"
        case .hipHopNight: return "Hip-Hop Night"
        case .latinNight: return "Latin Night"
        case .reggaeNight: return "Reggae Night"
        case .edmNight: return "EDM Night"
        case .rockNight: return "Rock Night"
        case .popNight: return "Pop Night"
        case .jazzNight: return "Jazz Night"
        case .karaokeNight: return "Karaoke Night"
        case .ladiesNight: return "Ladies Night"
        case .gentlemenNight: return "Gentlemen Night"
        case .prideNight: return "Pride Night"
        case .halloweenHorror: return "Halloween Horror"
        case .christmas: return "Christmas"
        case .newYear: return "New Year"
        case .valentines: return "Valentine's"
        case .stPatrick: return "St. Patrick"
        case .easter: return "Easter"
        case .summerKickoff: return "Summer Kickoff"
        case .backToSchool: return "Back to School"
        case .thanksgiving: return "Thanksgiving"
        case .blackFridayParty: return "Black Friday Party"
        case .winterWonderland: return "Winter Wonderland"
        case .noTheme: return "No Theme"
        }
    }
}
