//
//  MusicStyle.swift
//  E-ROK-Package
//
//  Created by Fabien Koré on 27/09/2025.
//


// Sources/SHIFT/MusicStyle.swift
// E-ROK-Package
//
// Created by Fabien Koré on 13/07/2025.

import Foundation

public enum MusicStyle: String, Codable, CaseIterable, Identifiable {
    case house = "House"
    case techno = "Techno"
    case trance = "Trance"
    case drumAndBass = "Drum & Bass"
    case dubstep = "Dubstep"
    case edm = "EDM"
    case progressiveHouse = "Progressive House"
    case deepHouse = "Deep House"
    case techHouse = "Tech House"
    case minimalTechno = "Minimal Techno"
    case hipHopUS = "Hip-Hop US"
    case hipHopFR = "Hip-Hop FR"
    case hipHopUK = "Hip-Hop UK"
    case hipHopDE = "Hip-Hop DE"
    case hipHopJP = "Hip-Hop JP"
    case hipHopBR = "Hip-Hop BR"
    case hipHopNG = "Hip-Hop NG"
    case trap = "Trap"
    case boomBap = "Boom Bap"
    case gangstaRap = "Gangsta Rap"
    case pop = "Pop"
    case rock = "Rock"
    case indieRock = "Indie Rock"
    case metal = "Metal"
    case punk = "Punk"
    case reggae = "Reggae"
    case dancehall = "Dancehall"
    case reggaeton = "Reggaeton"
    case latinPop = "Latin Pop"
    case salsa = "Salsa"
    case bachata = "Bachata"
    case afrobeat = "Afrobeat"
    case amapiano = "Amapiano"
    case funk = "Funk"
    case disco = "Disco"
    case soul = "Soul"
    case rnb = "R&B"
    case jazz = "Jazz"
    case blues = "Blues"
    case classical = "Classical"
    case ambient = "Ambient"
    case chillout = "Chillout"
    case downtempo = "Downtempo"
    case breakbeat = "Breakbeat"
    case garage = "Garage"
    case grime = "Grime"
    case jungle = "Jungle"
    case futureBass = "Future Bass"
    case hardstyle = "Hardstyle"
    case psyTrance = "Psy Trance"

    public var id: String { rawValue }

    public var displayName: String {
        switch self {
        case .house: return "House"
        case .techno: return "Techno"
        case .trance: return "Trance"
        case .drumAndBass: return "Drum & Bass"
        case .dubstep: return "Dubstep"
        case .edm: return "EDM"
        case .progressiveHouse: return "Progressive House"
        case .deepHouse: return "Deep House"
        case .techHouse: return "Tech House"
        case .minimalTechno: return "Minimal Techno"
        case .hipHopUS: return "Hip-Hop US"
        case .hipHopFR: return "Hip-Hop FR"
        case .hipHopUK: return "Hip-Hop UK"
        case .hipHopDE: return "Hip-Hop DE"
        case .hipHopJP: return "Hip-Hop JP"
        case .hipHopBR: return "Hip-Hop BR"
        case .hipHopNG: return "Hip-Hop NG"
        case .trap: return "Trap"
        case .boomBap: return "Boom Bap"
        case .gangstaRap: return "Gangsta Rap"
        case .pop: return "Pop"
        case .rock: return "Rock"
        case .indieRock: return "Indie Rock"
        case .metal: return "Metal"
        case .punk: return "Punk"
        case .reggae: return "Reggae"
        case .dancehall: return "Dancehall"
        case .reggaeton: return "Reggaeton"
        case .latinPop: return "Latin Pop"
        case .salsa: return "Salsa"
        case .bachata: return "Bachata"
        case .afrobeat: return "Afrobeat"
        case .amapiano: return "Amapiano"
        case .funk: return "Funk"
        case .disco: return "Disco"
        case .soul: return "Soul"
        case .rnb: return "R&B"
        case .jazz: return "Jazz"
        case .blues: return "Blues"
        case .classical: return "Classical"
        case .ambient: return "Ambient"
        case .chillout: return "Chillout"
        case .downtempo: return "Downtempo"
        case .breakbeat: return "Breakbeat"
        case .garage: return "Garage"
        case .grime: return "Grime"
        case .jungle: return "Jungle"
        case .futureBass: return "Future Bass"
        case .hardstyle: return "Hardstyle"
        case .psyTrance: return "Psy Trance"
        }
    }
}