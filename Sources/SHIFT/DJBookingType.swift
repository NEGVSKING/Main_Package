//
//  DJBookingType.swift
//  E-ROK-Package
//
//  Created by Fabien Koré on 27/09/2025.
//


// Sources/SHIFT/DJBookingType.swift
// E-ROK-Package
//
// Created by Fabien Koré on 13/07/2025.

import Foundation

public enum DJBookingType: String, Codable, CaseIterable, Identifiable {
    case wedding = "Mariage"
    case party = "Soirée"
    case clubNight = "Soirée club"
    case corporateEvent = "Événement d’entreprise"
    case birthdayParty = "Anniversaire"
    case anniversary = "Anniversaire de mariage"
    case engagementParty = "Fête de fiançailles"
    case babyShower = "Baby shower"
    case graduationParty = "Fête de remise de diplôme"
    case festival = "Festival"
    case concert = "Concert"
    case fashionShow = "Défilé de mode"
    case charityEvent = "Événement caritatif"
    case productLaunch = "Lancement de produit"
    case networkingEvent = "Événement de réseautage"
    case afterParty = "After-party"
    case poolParty = "Pool party"
    case beachParty = "Beach party"
    case houseParty = "House party"
    case barEvent = "Événement bar"
    case restaurantEvent = "Événement restaurant"
    case vipEvent = "Événement VIP"
    case themeNight = "Soirée à thème"
    case holidayParty = "Fête de vacances"
    case prom = "Bal de promo"
    case barMitzvah = "Bar Mitzvah"
    case quinceanera = "Quinceañera"
    case artExhibition = "Exposition artistique"
    case sportsEvent = "Événement sportif"
    case charityGala = "Gala caritatif"
    case noBooking = "All Booking"

    public var id: String { rawValue }

    public var displayName: String {
        switch self {
        case .wedding: return "Mariage"
        case .party: return "Soirée"
        case .clubNight: return "Soirée club"
        case .corporateEvent: return "Événement d’entreprise"
        case .birthdayParty: return "Anniversaire"
        case .anniversary: return "Anniversaire de mariage"
        case .engagementParty: return "Fête de fiançailles"
        case .babyShower: return "Baby shower"
        case .graduationParty: return "Fête de remise de diplôme"
        case .festival: return "Festival"
        case .concert: return "Concert"
        case .fashionShow: return "Défilé de mode"
        case .charityEvent: return "Événement caritatif"
        case .productLaunch: return "Lancement de produit"
        case .networkingEvent: return "Événement de réseautage"
        case .afterParty: return "After-party"
        case .poolParty: return "Pool party"
        case .beachParty: return "Beach party"
        case .houseParty: return "House party"
        case .barEvent: return "Événement bar"
        case .restaurantEvent: return "Événement restaurant"
        case .vipEvent: return "Événement VIP"
        case .themeNight: return "Soirée à thème"
        case .holidayParty: return "Fête de vacances"
        case .prom: return "Bal de promo"
        case .barMitzvah: return "Bar Mitzvah"
        case .quinceanera: return "Quinceañera"
        case .artExhibition: return "Exposition artistique"
        case .sportsEvent: return "Événement sportif"
        case .charityGala: return "Gala caritatif"
        case .noBooking: return "Tout Booking"
        }
    }
}