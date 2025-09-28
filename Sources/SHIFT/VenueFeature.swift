//
//  VenueFeature.swift
//  E-ROK-Package
//
//  Created by Fabien Koré on 27/09/2025.
//


// Sources/SHIFT/VenueFeature.swift
// E-ROK-Package
//
// Created by Fabien Koré on 06/09/2025.

import Foundation

public enum VenueFeature: String, Codable, CaseIterable, Identifiable {
    case danceFloor = "Piste de danse"
    case vipArea = "Carré VIP"
    case barCounter = "Comptoir de bar"
    case loungeArea = "Espace lounge"
    case terrace = "Terrasse"
    case rooftop = "Rooftop"
    case stage = "Scène"
    case privateRoom = "Salle privée"
    case smokingArea = "Espace fumeur"
    case cloakroom = "Vestiaire"
    case outdoorArea = "Espace extérieur"
    case pool = "Piscine"
    case restaurantArea = "Espace restaurant"
    case karaokeRoom = "Salle de karaoké"
    case gamingArea = "Espace de jeux"
    case hookahLounge = "Salon à chicha"
    case liveMusicStage = "Scène pour musique live"
    case djBooth = "Cabine DJ"
    case cocktailBar = "Bar à cocktails"
    case wineCellar = "Cave à vin"
    case arcadeRoom = "Salle d'arcade"
    case photoBooth = "Photobooth"
    case chillZone = "Zone chill"
    case vipLounge = "Lounge VIP"

    public var id: String { rawValue }

    public var displayName: String {
        switch self {
        case .danceFloor: return "Piste de danse"
        case .vipArea: return "Carré VIP"
        case .barCounter: return "Comptoir de bar"
        case .loungeArea: return "Espace lounge"
        case .terrace: return "Terrasse"
        case .rooftop: return "Rooftop"
        case .stage: return "Scène"
        case .privateRoom: return "Salle privée"
        case .smokingArea: return "Espace fumeur"
        case .cloakroom: return "Vestiaire"
        case .outdoorArea: return "Espace extérieur"
        case .pool: return "Piscine"
        case .restaurantArea: return "Espace restaurant"
        case .karaokeRoom: return "Salle de karaoké"
        case .gamingArea: return "Espace de jeux"
        case .hookahLounge: return "Salon à chicha"
        case .liveMusicStage: return "Scène pour musique live"
        case .djBooth: return "Cabine DJ"
        case .cocktailBar: return "Bar à cocktails"
        case .wineCellar: return "Cave à vin"
        case .arcadeRoom: return "Salle d'arcade"
        case .photoBooth: return "Photobooth"
        case .chillZone: return "Zone chill"
        case .vipLounge: return "Lounge VIP"
        }
    }
}