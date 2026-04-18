// Sources/MYMECA/VehicleOptions.swift
// E-ROK-Package
//
// Created by Fabien Koré

import Foundation

/// Options et équipements disponibles sur un véhicule.
public enum VehicleOption: String, Codable, CaseIterable, Identifiable, Sendable {

    // MARK: - Confort Sièges
    case heatedSeats            = "Sièges chauffants"
    case ventilatedSeats        = "Sièges ventilés"
    case massageSeats           = "Sièges massants"
    case electricSeats          = "Sièges électriques"
    case memorySeats             = "Sièges à mémoire de position"
    case recliningRearSeats     = "Sièges arrière inclinables"
    case heatedRearSeats        = "Sièges arrière chauffants"
    case thirdRow               = "3ème rangée de sièges"
    case sportSeats             = "Sièges sport baquets"
    case alcantaraSeats         = "Sellerie Alcantara"
    case leatherSeats           = "Sellerie cuir"
    case nappaleatherSeats      = "Sellerie cuir Nappa"
    case suedeSeats             = "Sellerie daim"

    // MARK: - Confort Habitacle
    case heatedSteeringWheel    = "Volant chauffant"
    case electricSteeringWheel  = "Réglage électrique du volant"
    case panoramicRoof          = "Toit panoramique"
    case sunroof                = "Toit ouvrant"
    case electricSunblind       = "Store électrique"
    case heatedWindshield       = "Pare-brise chauffant"
    case heatedMirrors          = "Rétroviseurs chauffants"
    case electricMirrors        = "Rétroviseurs électriques"
    case foldingMirrors         = "Rétroviseurs rabattables électriquement"
    case ambientLighting        = "Éclairage ambiant"
    case multicolorLighting     = "Éclairage ambiant multicolore"
    case headUpDisplay          = "Affichage tête haute (HUD)"
    case arHud                  = "HUD Réalité Augmentée"
    case digitalDashboard       = "Tableau de bord numérique"
    case airSuspension          = "Suspension pneumatique"
    case adaptiveSuspension     = "Suspension adaptative"
    case airConditioning        = "Climatisation"
    case dualZoneClimate        = "Climatisation bi-zone"
    case triZoneClimate         = "Climatisation tri-zone"
    case quadZoneClimate        = "Climatisation quad-zone"
    case fridgeCompartment      = "Réfrigérateur de bord"
    case rearFridgeCompartment  = "Mini-réfrigérateur arrière"
    case rearEntertainment      = "Écrans arrière"
    case rearTablet             = "Tablettes tactiles arrière"
    case electricCurtains       = "Rideaux électriques"

    // MARK: - Audio / Multimédia
    case premiumSound           = "Système audio premium"
    case boseSound              = "Bose Premium Sound"
    case harmanKardonSound      = "Harman Kardon"
    case bang_olufsenSound      = "Bang & Olufsen"
    case burmesterSound         = "Burmester"
    case meridianSound          = "Meridian"
    case jblSound               = "JBL"
    case focalsound             = "Focal"
    case sonySound              = "Sony Premium Audio"
    case carPlay                = "Apple CarPlay"
    case androidAuto            = "Android Auto"
    case carPlayWireless        = "Apple CarPlay sans fil"
    case androidAutoWireless    = "Android Auto sans fil"
    case wifi                   = "Hotspot Wi-Fi"
    case wirelessCharger        = "Chargeur à induction"
    case multipleUsb            = "Ports USB multiples"
    case usbC                   = "Ports USB-C"
    case navigation             = "Navigation GPS intégrée"
    case onlineNavigation       = "Navigation connectée en temps réel"

    // MARK: - Sécurité Active
    case adaptiveCruiseControl  = "Régulateur de vitesse adaptatif (ACC)"
    case laneKeepAssist         = "Aide au maintien de voie"
    case laneChangeAssist       = "Aide au changement de voie"
    case autoLaneChange         = "Changement de voie automatique"
    case trafficJamAssist       = "Aide aux embouteillages"
    case highwayAssist          = "Conduite autonome autoroute"
    case autoEmergencyBraking   = "Freinage d'urgence autonome (AEB)"
    case pedestrianDetection    = "Détection piétons/cyclistes"
    case blindSpotMonitor       = "Surveillance angle mort"
    case rearCrossTraffic       = "Alerte trafic transversal arrière"
    case tirePressureMonitor    = "Surveillance pression pneus (TPMS)"
    case nightVision            = "Vision nocturne"
    case driverAttentionMonitor = "Surveillance attention conducteur"
    case speedLimiter           = "Limiteur de vitesse intelligent"
    case trafficSignRecognition = "Reconnaissance des panneaux"

    // MARK: - Sécurité Passive
    case frontalAirbags         = "Airbags frontaux"
    case sideAirbags            = "Airbags latéraux"
    case curtainAirbags         = "Airbags rideaux"
    case kneeAirbag             = "Airbag genoux"
    case rearAirbags            = "Airbags arrière"
    case isofix                 = "Points ISOFIX"
    case rollBar                = "Arceau de protection"

    // MARK: - Aides au Stationnement / Manœuvre
    case rearParkingSensors     = "Capteurs de stationnement arrière"
    case frontParkingSensors    = "Capteurs de stationnement avant"
    case allParkingSensors      = "Capteurs de stationnement 360°"
    case rearCamera             = "Caméra de recul"
    case surroundCamera         = "Caméra 360° / vue panoramique"
    case autoPark               = "Stationnement automatique"
    case remotePark             = "Stationnement à distance"
    case trailerAssist          = "Aide à la remorque"

    // MARK: - Transmission / Châssis
    case awd                    = "Transmission intégrale (AWD)"
    case fourWd                 = "4x4 tout-terrain (4WD)"
    case rearWd                 = "Propulsion (RWD)"
    case frontWd                = "Traction avant (FWD)"
    case torqueVectoring        = "Vectorisation du couple"
    case limitedSlipDiff        = "Différentiel à glissement limité"
    case activeDiff             = "Différentiel actif"
    case sportMode              = "Mode Sport"
    case trackMode              = "Mode Track"
    case offRoadMode            = "Mode Tout-terrain"
    case snowMode               = "Mode Neige"
    case ecoMode                = "Mode Éco"
    case launchControl          = "Launch Control"
    case driftMode              = "Drift Mode"
    case rearWheelSteering      = "Direction des roues arrière"
    case activeSpoiler          = "Becquet / Aileron actif"
    case airbrake               = "Air brake actif"

    // MARK: - Extérieur
    case ledHeadlights          = "Phares LED"
    case matrixLedHeadlights    = "Phares Matrix LED"
    case laserHeadlights        = "Phares laser"
    case adaptiveHeadlights     = "Phares directionnels adaptatifs"
    case fogLights              = "Feux antibrouillard"
    case ledTaillights          = "Feux arrière LED"
    case electricTrunk          = "Coffre électrique"
    case handsFreeAccess        = "Accès mains-libres"
    case keylessEntry           = "Entrée sans clé (Keyless)"
    case digitalKey             = "Clé numérique (smartphone)"
    case towHook                = "Crochet d'attelage"
    case electricTowHook        = "Crochet d'attelage rétractable"
    case roofBars               = "Barres de toit"
    case runFlatTires           = "Pneus anti-crevaison (Run Flat)"
    case spareTire              = "Roue de secours"
    case tireRepairKit          = "Kit de réparation pneu"

    // MARK: - Électrique / Hybride
    case vehicleToLoad          = "Vehicle-to-Load (V2L)"
    case vehicleToGrid          = "Vehicle-to-Grid (V2G)"
    case vehicleToHome          = "Vehicle-to-Home (V2H)"
    case preconditioning        = "Préchauffage / Pré-conditionnement"
    case heatPump               = "Pompe à chaleur"
    case batteryGuard           = "Protection batterie en voyage"
    case smartChargeSchedule    = "Programmation de recharge intelligente"

    public var id: String { rawValue }

    /// Catégorie de l'option pour regroupement dans l'UI.
    public var category: VehicleOptionCategory {
        switch self {
        case .heatedSeats, .ventilatedSeats, .massageSeats, .electricSeats,
             .memorySeats, .recliningRearSeats, .heatedRearSeats, .thirdRow,
             .sportSeats, .alcantaraSeats, .leatherSeats, .nappaleatherSeats, .suedeSeats:
            return .seats
        case .heatedSteeringWheel, .electricSteeringWheel, .panoramicRoof,
             .sunroof, .electricSunblind, .heatedWindshield, .heatedMirrors,
             .electricMirrors, .foldingMirrors, .ambientLighting, .multicolorLighting,
             .headUpDisplay, .arHud, .digitalDashboard, .airSuspension,
             .adaptiveSuspension, .airConditioning, .dualZoneClimate, .triZoneClimate,
             .quadZoneClimate, .fridgeCompartment, .rearFridgeCompartment,
             .rearEntertainment, .rearTablet, .electricCurtains:
            return .comfort
        case .premiumSound, .boseSound, .harmanKardonSound, .bang_olufsenSound,
             .burmesterSound, .meridianSound, .jblSound, .focalsound, .sonySound,
             .carPlay, .androidAuto, .carPlayWireless, .androidAutoWireless,
             .wifi, .wirelessCharger, .multipleUsb, .usbC, .navigation, .onlineNavigation:
            return .multimedia
        case .adaptiveCruiseControl, .laneKeepAssist, .laneChangeAssist, .autoLaneChange,
             .trafficJamAssist, .highwayAssist, .autoEmergencyBraking, .pedestrianDetection,
             .blindSpotMonitor, .rearCrossTraffic, .tirePressureMonitor, .nightVision,
             .driverAttentionMonitor, .speedLimiter, .trafficSignRecognition:
            return .activeSafety
        case .frontalAirbags, .sideAirbags, .curtainAirbags, .kneeAirbag,
             .rearAirbags, .isofix, .rollBar:
            return .passiveSafety
        case .rearParkingSensors, .frontParkingSensors, .allParkingSensors,
             .rearCamera, .surroundCamera, .autoPark, .remotePark, .trailerAssist:
            return .parking
        case .awd, .fourWd, .rearWd, .frontWd, .torqueVectoring, .limitedSlipDiff,
             .activeDiff, .sportMode, .trackMode, .offRoadMode, .snowMode, .ecoMode,
             .launchControl, .driftMode, .rearWheelSteering, .activeSpoiler, .airbrake:
            return .chassis
        case .ledHeadlights, .matrixLedHeadlights, .laserHeadlights, .adaptiveHeadlights,
             .fogLights, .ledTaillights, .electricTrunk, .handsFreeAccess, .keylessEntry,
             .digitalKey, .towHook, .electricTowHook, .roofBars, .runFlatTires,
             .spareTire, .tireRepairKit:
            return .exterior
        case .vehicleToLoad, .vehicleToGrid, .vehicleToHome, .preconditioning,
             .heatPump, .batteryGuard, .smartChargeSchedule:
            return .electric
        }
    }
}

/// Catégories d'options pour regroupement dans l'UI.
public enum VehicleOptionCategory: String, Codable, CaseIterable, Identifiable, Sendable {
    case seats         = "Sièges & Sellerie"
    case comfort       = "Confort & Habitacle"
    case multimedia    = "Multimédia & Connectivité"
    case activeSafety  = "Sécurité active"
    case passiveSafety = "Sécurité passive"
    case parking       = "Aide au stationnement"
    case chassis       = "Châssis & Transmission"
    case exterior      = "Extérieur & Accès"
    case electric      = "Électrique & Énergie"

    public var id: String { rawValue }
}
