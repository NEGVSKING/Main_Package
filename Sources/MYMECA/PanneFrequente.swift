// Sources/MYMECA/PanneFrequente.swift
// E-ROK-Package
//
// Created by Fabien Koré on 26/03/2025.

import Foundation

public enum PanneFrequente: String, Codable, CaseIterable, Identifiable, Equatable {
    // Pannes existantes
    case batterieDechargee = "Batterie déchargée"
    case pneuCreve = "Pneu crevé"
    case fusibleGrille = "Fusible grillé"
    case ampouleGrillee = "Ampoule grillée"
    case niveauLiquide = "Niveau de liquide bas"
    case courroieCraquee = "Courroie craquée"
    case balaiEssuieGlace = "Balai d'essuie-glace usé"
    case capteurSimple = "Capteur simple défaillant"
    case freinsUses = "Freins usés"
    case alternateurDefaillant = "Alternateur défaillant"
    case climatisationPanne = "Climatisation en panne"
    case demarreurDefectueux = "Démarreur défectueux"
    case echappementEndommage = "Échappement endommagé"
    case problemeDirection = "Problème de direction"
    case remorquage = "Remorquage"
    case controleLongTrajet = "Contrôle avant long trajet"

    // Nouvelles pannes (40 ajoutées)
    case embrayageUse = "Embrayage usé"
    case jointCulasseDefectueux = "Joint de culasse défectueux"
    case pompeEauDefaillante = "Pompe à eau défaillante"
    case radiateurEndommage = "Radiateur endommagé"
    case injecteursEncrasse = "Injecteurs encrassés"
    case boiteVitessePanne = "Boîte de vitesse en panne"
    case cardanDefectueux = "Cardan défectueux"
    case suspensionUse = "Suspension usée"
    case capteurPressionPneu = "Capteur de pression de pneu défaillant"
    case pareBriseFissure = "Pare-brise fissuré"
    case vitreLateraleCassee = "Vitre latérale cassée"
    case fuiteHuileMoteur = "Fuite d'huile moteur"
    case turboDefaillant = "Turbo défaillant"
    case catalyseurBouche = "Catalyseur bouché"
    case problemeAllumage = "Problème d'allumage"
    case bougiesUsees = "Bougies usées"
    case filtreAirBouche = "Filtre à air bouché"
    case filtreCarburantBouche = "Filtre à carburant bouché"
    case pompeCarburantDefaillante = "Pompe à carburant défaillante"
    case embrayageElectroniquePanne = "Embrayage électronique en panne"
    case systemeFreinageABS = "Système de freinage ABS défaillant"
    case capteurVitesseDefectueux = "Capteur de vitesse défectueux"
    case directionAssisteePanne = "Direction assistée en panne"
    case fuiteLiquideRefroidissement = "Fuite de liquide de refroidissement"
    case alternateurCourroieCassee = "Courroie d'alternateur cassée"
    case capteurTemperatureDefectueux = "Capteur de température défectueux"
    case problemeECU = "Problème d'ECU (unité de contrôle électronique)"
    case vitreElectriquePanne = "Vitre électrique en panne"
    case serrurePorteDefaillante = "Serrure de porte défaillante"
    case retroviseurEndommage = "Rétroviseur endommagé"
    case climatisationFuiteGaz = "Fuite de gaz de climatisation"
    case capteurParkingDefectueux = "Capteur de parking défectueux"
    case systemeEchappementBruyant = "Système d'échappement bruyant"
    case amortisseursUses = "Amortisseurs usés"
    case rotuleDirectionUse = "Rotule de direction usée"
    case problemeBoiteAuto = "Problème de boîte automatique"
    case embrayagePatinage = "Embrayage qui patine"
    case capteurOxigeneDefectueux = "Capteur d'oxygène défectueux"
    case systemeStartStopPanne = "Système start-stop en panne"
    case problemeAntivol = "Problème d'antivol électronique"
    case liquideFreinBas = "Niveau de liquide de frein bas"
    case capteurPluieDefectueux = "Capteur de pluie défectueux"
    case problemeFeuxArriere = "Problème de feux arrière"
    case capteurABSDefectueux = "Capteur ABS défectueux"
    case problemeVerrouillageCentral = "Problème de verrouillage centralisé"
    case fuiteDirectionAssistee = "Fuite de liquide de direction assistée"
    case radiateurChauffagePanne = "Radiateur de chauffage en panne"
    case capteurAirbagDefectueux = "Capteur d'airbag défectueux"
    case batterieHybrideFaible = "Batterie hybride faible"
    case diagnosticOBDRequis = "Diagnostic OBD requis"

    public var id: String { rawValue }

    public static func == (lhs: PanneFrequente, rhs: PanneFrequente) -> Bool {
        lhs.rawValue == rhs.rawValue
    }

    public var priseType: String {
        switch self {
        case .batterieDechargee, .pneuCreve, .fusibleGrille, .ampouleGrillee, .niveauLiquide,
             .balaiEssuieGlace, .capteurSimple, .pareBriseFissure, .vitreLateraleCassee,
             .retroviseurEndommage, .liquideFreinBas, .problemeFeuxArriere:
            return "Intervenant"
        case .courroieCraquee, .freinsUses, .alternateurDefaillant, .climatisationPanne,
             .demarreurDefectueux, .echappementEndommage, .problemeDirection, .remorquage,
             .embrayageUse, .jointCulasseDefectueux, .pompeEauDefaillante, .radiateurEndommage,
             .injecteursEncrasse, .boiteVitessePanne, .cardanDefectueux, .suspensionUse,
             .turboDefaillant, .catalyseurBouche, .problemeAllumage, .bougiesUsees,
             .filtreAirBouche, .filtreCarburantBouche, .pompeCarburantDefaillante,
             .embrayageElectroniquePanne, .systemeFreinageABS, .capteurVitesseDefectueux,
             .directionAssisteePanne, .fuiteLiquideRefroidissement, .alternateurCourroieCassee,
             .capteurTemperatureDefectueux, .problemeECU, .vitreElectriquePanne,
             .serrurePorteDefaillante, .climatisationFuiteGaz, .capteurParkingDefectueux,
             .systemeEchappementBruyant, .amortisseursUses, .rotuleDirectionUse,
             .problemeBoiteAuto, .embrayagePatinage, .capteurOxigeneDefectueux,
             .systemeStartStopPanne, .problemeAntivol, .capteurPluieDefectueux,
             .capteurABSDefectueux, .problemeVerrouillageCentral, .fuiteDirectionAssistee,
             .radiateurChauffagePanne, .capteurAirbagDefectueux, .batterieHybrideFaible,
             .diagnosticOBDRequis:
            return "Garage"
        case .controleLongTrajet:
            return "Intervenant ou Garage"
        case .capteurPressionPneu:
            return "Intervenant ou Garage"
        case .fuiteHuileMoteur:
            return "Intervenant ou Garage"
        }
    }

    public var description: String {
        switch self {
        case .batterieDechargee:
            return "Votre batterie est à plat, nécessitant un démarrage avec des câbles. Pris en charge par un intervenant."
        case .pneuCreve:
            return "Un ou plusieurs pneus sont crevés, nécessitant un changement de roue. Pris en charge par un intervenant."
        case .fusibleGrille:
            return "Un fusible est défectueux, nécessitant un remplacement. Pris en charge par un intervenant."
        case .ampouleGrillee:
            return "Une ou plusieurs de vos ampoules sont défectueuses ou endommagées. Pris en charge par un intervenant."
        case .niveauLiquide:
            return "Le niveau de liquide (lave-glace ou huile) est trop bas et doit être rempli. Pris en charge par un intervenant."
        case .courroieCraquee:
            return "Une courroie est craquée ou endommagée, nécessitant un remplacement. À traiter en garage."
        case .balaiEssuieGlace:
            return "Les balais d’essuie-glace sont usés et doivent être remplacés. Pris en charge par un intervenant."
        case .capteurSimple:
            return "Un capteur est défaillant, nécessitant une réinitialisation ou un remplacement. Pris en charge par un intervenant."
        case .freinsUses:
            return "Les plaquettes de frein sont usées, nécessitant un remplacement. À traiter en garage."
        case .alternateurDefaillant:
            return "L’alternateur ne fonctionne pas correctement, pouvant empêcher la charge. À traiter en garage."
        case .climatisationPanne:
            return "La climatisation ne refroidit plus, nécessitant une recharge de gaz. À traiter en garage."
        case .demarreurDefectueux:
            return "Le démarreur est défaillant, empêchant le démarrage du moteur. À traiter en garage."
        case .echappementEndommage:
            return "L’échappement est endommagé, causant bruit ou fuites. À traiter en garage."
        case .problemeDirection:
            return "La direction est difficile ou instable, nécessitant une vérification. À traiter en garage."
        case .remorquage:
            return "Votre véhicule est immobilisé et nécessite un remorquage vers un atelier. À traiter en garage."
        case .controleLongTrajet:
            return "Vérification complète des pneus, freins, liquides, et autres pour un trajet longue distance. Peut être effectué par un intervenant ou en garage."
        case .embrayageUse:
            return "L’embrayage est usé, causant des difficultés de changement de vitesse. À traiter en garage."
        case .jointCulasseDefectueux:
            return "Le joint de culasse est endommagé, pouvant causer des fuites ou surchauffe. À traiter en garage."
        case .pompeEauDefaillante:
            return "La pompe à eau ne fonctionne pas, entraînant une surchauffe. À traiter en garage."
        case .radiateurEndommage:
            return "Le radiateur est endommagé, causant des problèmes de refroidissement. À traiter en garage."
        case .injecteursEncrasse:
            return "Les injecteurs sont encrassés, affectant les performances moteur. À traiter en garage."
        case .boiteVitessePanne:
            return "La boîte de vitesse présente des dysfonctionnements. À traiter en garage."
        case .cardanDefectueux:
            return "Le cardan est défectueux, causant des bruits ou vibrations. À traiter en garage."
        case .suspensionUse:
            return "La suspension est usée, affectant le confort de conduite. À traiter en garage."
        case .capteurPressionPneu:
            return "Un capteur de pression de pneu est défaillant, nécessitant un remplacement. Pris en charge par un intervenant."
        case .pareBriseFissure:
            return "Le pare-brise est fissuré, nécessitant une réparation ou remplacement. Pris en charge par un intervenant."
        case .vitreLateraleCassee:
            return "Une vitre latérale est cassée, nécessitant un remplacement. Pris en charge par un intervenant."
        case .fuiteHuileMoteur:
            return "Une fuite d’huile moteur est détectée, nécessitant une réparation. À traiter en garage."
        case .turboDefaillant:
            return "Le turbo est défaillant, réduisant la puissance moteur. À traiter en garage."
        case .catalyseurBouche:
            return "Le catalyseur est bouché, affectant les émissions et performances. À traiter en garage."
        case .problemeAllumage:
            return "Un problème d’allumage empêche le démarrage du moteur. À traiter en garage."
        case .bougiesUsees:
            return "Les bougies d’allumage sont usées, affectant la combustion. À traiter en garage."
        case .filtreAirBouche:
            return "Le filtre à air est bouché, réduisant les performances moteur. À traiter en garage."
        case .filtreCarburantBouche:
            return "Le filtre à carburant est bouché, affectant l’alimentation. À traiter en garage."
        case .pompeCarburantDefaillante:
            return "La pompe à carburant est défaillante, empêchant l’alimentation en carburant. À traiter en garage."
        case .embrayageElectroniquePanne:
            return "L’embrayage électronique est en panne, causant des problèmes de transmission. À traiter en garage."
        case .systemeFreinageABS:
            return "Le système de freinage ABS est défaillant, affectant la sécurité. À traiter en garage."
        case .capteurVitesseDefectueux:
            return "Le capteur de vitesse est défectueux, perturbant le tableau de bord. À traiter en garage."
        case .directionAssisteePanne:
            return "La direction assistée est en panne, rendant la conduite difficile. À traiter en garage."
        case .fuiteLiquideRefroidissement:
            return "Une fuite de liquide de refroidissement est détectée, risquant une surchauffe. À traiter en garage."
        case .alternateurCourroieCassee:
            return "La courroie d’alternateur est cassée, empêchant la charge. À traiter en garage."
        case .capteurTemperatureDefectueux:
            return "Le capteur de température est défectueux, perturbant la régulation. À traiter en garage."
        case .problemeECU:
            return "L’ECU (unité de contrôle électronique) est défaillant, affectant les systèmes. À traiter en garage."
        case .vitreElectriquePanne:
            return "Une vitre électrique ne fonctionne plus. À traiter en garage."
        case .serrurePorteDefaillante:
            return "Une serrure de porte est défaillante, empêchant l’ouverture. À traiter en garage."
        case .retroviseurEndommage:
            return "Un rétroviseur est endommagé, nécessitant un remplacement. Pris en charge par un intervenant."
        case .climatisationFuiteGaz:
            return "Une fuite de gaz de climatisation empêche le refroidissement. À traiter en garage."
        case .capteurParkingDefectueux:
            return "Un capteur de parking est défectueux, perturbant l’aide au stationnement. À traiter en garage."
        case .systemeEchappementBruyant:
            return "Le système d’échappement est bruyant, nécessitant une vérification. À traiter en garage."
        case .amortisseursUses:
            return "Les amortisseurs sont usés, affectant la stabilité. À traiter en garage."
        case .rotuleDirectionUse:
            return "Une rotule de direction est usée, causant des vibrations. À traiter en garage."
        case .problemeBoiteAuto:
            return "La boîte automatique présente des dysfonctionnements. À traiter en garage."
        case .embrayagePatinage:
            return "L’embrayage patine, réduisant la transmission de puissance. À traiter en garage."
        case .capteurOxigeneDefectueux:
            return "Le capteur d’oxygène est défectueux, affectant les émissions. À traiter en garage."
        case .systemeStartStopPanne:
            return "Le système start-stop est en panne, empêchant l’arrêt automatique. À traiter en garage."
        case .problemeAntivol:
            return "L’antivol électronique est défaillant, empêchant le démarrage. À traiter en garage."
        case .liquideFreinBas:
            return "Le niveau de liquide de frein est bas, nécessitant un appoint. Pris en charge par un intervenant."
        case .capteurPluieDefectueux:
            return "Le capteur de pluie est défectueux, perturbant les essuie-glaces. À traiter en garage."
        case .problemeFeuxArriere:
            return "Les feux arrière ne fonctionnent pas correctement. Pris en charge par un intervenant."
        case .capteurABSDefectueux:
            return "Un capteur ABS est défectueux, affectant le freinage. À traiter en garage."
        case .problemeVerrouillageCentral:
            return "Le verrouillage centralisé ne fonctionne pas correctement. À traiter en garage."
        case .fuiteDirectionAssistee:
            return "Une fuite de liquide de direction assistée est détectée. À traiter en garage."
        case .radiateurChauffagePanne:
            return "Le radiateur de chauffage est en panne, affectant le chauffage. À traiter en garage."
        case .capteurAirbagDefectueux:
            return "Un capteur d’airbag est défectueux, affectant la sécurité. À traiter en garage."
        case .batterieHybrideFaible:
            return "La batterie hybride est faible, nécessitant une vérification. À traiter en garage."
        case .diagnosticOBDRequis:
            return "Un diagnostic OBD est requis pour identifier une panne complexe. À traiter en garage."
        }
    }
}
