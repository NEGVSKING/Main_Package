//
//  ServerSpecialty.swift
//  E-ROK-Package
//
//  Created by Fabien Koré on 27/09/2025.
//


// Sources/SHIFT/ServerSpecialty.swift
// E-ROK-Package
//
// Created by Fabien Koré on 13/07/2025.

import Foundation

public enum ServerSpecialty: String, Codable, CaseIterable, Identifiable {
    case bar = "Bar"
    case cocktailRoom = "Salles cocktails"
    case vipSection = "Section VIP"
    case roomManagement = "Management salle"
    case tableService = "Service en salle"
    case mixology = "Mixologie"
    case banquetService = "Service banquet"
    case terraceService = "Service terrasse"
    case barManagement = "Gestion bar"
    case eventService = "Service événementiel"
    case bottleService = "Service bouteilles"
    case loungeService = "Service lounge"
    case catering = "Traiteur"
    case barista = "Barista"
    case sommelier = "Sommelier"
    case beerExpert = "Biérologie"
    case flairBartending = "Flair bartending"
    case whiskeySpecialist = "Spécialiste whisky"
    case shishaMaster = "Maître chicha"
    case cigarSommelier = "Sommelier cigares"
    case vipHost = "Hôte VIP"
    case caviarService = "Service caviar"
    case guestRelations = "Relations clientèle"
    case mixologyShow = "Show mixologie"
    case sakeSommelier = "Sommelier saké"
    case cashier = "Gestion caisse"
    case runner = "Runner"
    case mixologistSignature = "Cocktails signatures"
    case molecularGastronomy = "Mixologie moléculaire"
    case hostessReception = "Hôtesse d'accueil"
    case orderTaker = "Prise de commande"
    case wineTastingExpert = "Dégustations privées"
    case inventoryManager = "Gestion des stocks"
    case vipSuiteService = "Service loge privée"
    case bilingualService = "Service bilingue"
    case teaSommelier = "Sommelier thé"
    case flambeService = "Service flambage"
    case hygieneReferent = "Référent hygiène"
    case securityLiaison = "Liaison sécurité"

    public var id: String { rawValue }

    public var displayName: String {
        switch self {
        case .bar:
            return "Bar"
        case .cocktailRoom:
            return "Salles cocktails"
        case .vipSection:
            return "Section VIP"
        case .roomManagement:
            return "Management salle"
        case .tableService:
            return "Service en salle"
        case .mixology:
            return "Mixologie"
        case .banquetService:
            return "Service banquet"
        case .terraceService:
            return "Service terrasse"
        case .barManagement:
            return "Gestion bar"
        case .eventService:
            return "Service événementiel"
        case .bottleService:
            return "Service bouteilles"
        case .loungeService:
            return "Service lounge"
        case .catering:
            return "Traiteur"
        case .barista:
            return "Barista"
        case .sommelier:
            return "Sommelier"
        case .beerExpert:
            return "Biérologie (Service & expertise bières)"
        case .flairBartending:
            return "Flair Bartending (Mixologie acrobatique)"
        case .whiskeySpecialist:
            return "Spécialiste Whisky (Expert spiritueux vieillis)"
        case .shishaMaster:
            return "Maître Chicha (Préparation de narguilé)"
        case .cigarSommelier:
            return "Sommelier en cigares (Habanos)"
        case .vipHost:
            return "Hôte / Hôtesse VIP Dédié(e)"
        case .caviarService:
            return "Service Caviar & Prestige"
        case .guestRelations:
            return "Relations publiques / Guest relations"
        case .mixologyShow:
            return "Spectacle & Animation de bar"
        case .sakeSommelier:
            return "Sommelier en Saké"
        case .cashier:
            return "Gestion caisse & facturation"
        case .runner:
            return "Runner (Soutien service rapide)"
        case .mixologistSignature:
            return "Cocktails Signatures (Créateur de cartes)"
        case .molecularGastronomy:
            return "Mixologie Moléculaire (Effets fumants, sphérifications)"
        case .hostessReception:
            return "Accueil & Vestiaire (Hôte/Hôtesse d'accueil)"
        case .orderTaker:
            return "Prise de commande mobile (Expert tablette/POS)"
        case .wineTastingExpert:
            return "Animateur dégustations (Vins & Spiritueux)"
        case .inventoryManager:
            return "Gestion de cave & stocks"
        case .vipSuiteService:
            return "Service en Suite / Loge Privée"
        case .bilingualService:
            return "Service multilingue (Anglais/Espagnol/etc.)"
        case .teaSommelier:
            return "Sommelier en Thé / Infusions premium"
        case .flambeService:
            return "Service Flambage & Découpe en salle"
        case .hygieneReferent:
            return "Référent Hygiène & Sécurité Alimentaire (HACCP)"
        case .securityLiaison:
            return "Coordinateur service & sécurité"
        }
    }
}