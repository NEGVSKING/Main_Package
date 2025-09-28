// Sources/MYMECA/PanneFrequente.swift
// E-ROK-Package
//
// Created by Fabien Koré on 26/03/2025.

import Foundation

public enum PanneFrequente: String, Codable, CaseIterable, Identifiable, Equatable {
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

    public var id: String { rawValue }

    public static func == (lhs: PanneFrequente, rhs: PanneFrequente) -> Bool {
        lhs.rawValue == rhs.rawValue
    }

    public var priseType: String {
        switch self {
        case .batterieDechargee, .pneuCreve, .fusibleGrille, .ampouleGrillee, .niveauLiquide,
             .balaiEssuieGlace, .capteurSimple:
            return "Intervenant"
        case .courroieCraquee, .freinsUses, .alternateurDefaillant, .climatisationPanne,
             .demarreurDefectueux, .echappementEndommage, .problemeDirection, .remorquage:
            return "Garage"
        case .controleLongTrajet:
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
        }
    }
}