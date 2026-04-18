// Sources/MYMECA/InfotainmentSystem.swift
// E-ROK-Package
//
// Created by Fabien Koré

import Foundation

/// Système d'infodivertissement / OS embarqué du véhicule.
public enum InfotainmentSystem: String, Codable, CaseIterable, Identifiable, Sendable {
    // Systèmes constructeurs
    case mbux            = "MBUX (Mercedes-Benz)"
    case bmwIdrive       = "BMW iDrive"
    case audiMmi         = "Audi MMI"
    case vwMib           = "VW MIB3"
    case porschePcm      = "Porsche PCM"
    case teslaScreen     = "Tesla Infotainment (Linux)"
    case fordSync        = "Ford SYNC"
    case fordSync4       = "Ford SYNC 4"
    case gm              = "GM Infotainment (Chevrolet / Cadillac)"
    case rLink           = "Renault R-LINK"
    case renaultEasyLink = "Renault Easy Link"
    case openR           = "Renault OpenR"
    case peugeotConnected  = "Peugeot i-Cockpit Connected"
    case stellantisConnect = "Stellantis UConnect"
    case volvaSensus     = "Volvo Sensus"
    case volvGoogleAnd   = "Volvo Google Automotive OS"
    case polestarAndroid = "Polestar Android Automotive"
    case hondaConnect    = "Honda Connect"
    case hondaAria       = "Honda ARIA (Google Based)"
    case hyundaiBlueLink = "Hyundai Bluelink Connected"
    case kiaCVT          = "Kia Connected Services"
    case genesisConnect  = "Genesis Connected Services"
    case nissanConnect   = "NissanConnect"
    case infinitiConnect = "Infiniti InTouch"
    case mazdaConnect    = "Mazda Connect"
    case subaruStarlink  = "Subaru STARLINK"
    case toyotaMultimedia  = "Toyota Multimedia"
    case lexusEnform     = "Lexus Enform"
    case mitsubishiConnect = "Mitsubishi Connect"
    case jeepUconnect    = "Jeep Uconnect"
    case dodgeUconnect   = "Dodge Uconnect"
    case alfaConnect     = "Alfa Romeo Connect"
    case fiatConnect     = "Fiat Connect"
    case jaguarPivi      = "Jaguar Land Rover Pivi Pro"
    case landroverPivi   = "Land Rover Pivi Pro"
    case astonMartin     = "Aston Martin Infotainment"
    case rollsRoyceSpirit  = "Rolls-Royce Spirit"
    case bentleyBentayga = "Bentley My Infotainment"
    case ferrariConnect  = "Ferrari Connect"
    case lamborghiniConnect = "Lamborghini Unica"
    case bugatti         = "Bugatti Infotainment"
    case nioNomi         = "NIO NOMI AI"
    case bydDiLink       = "BYD DiLink"
    case xpengXmart      = "Xpeng Xmart OS"
    case androidAutomotive = "Android Automotive OS (Google)"
    // Projections
    case carPlay         = "Apple CarPlay"
    case androidAuto     = "Android Auto"
    case carPlayWireless = "Apple CarPlay sans fil"
    case androidAutoWireless = "Android Auto sans fil"

    public var id: String { rawValue }

    /// Marques exclusives ou fortement associées à ce système.
    public var exclusiveBrands: [String] {
        switch self {
        case .mbux:              return ["Mercedes-Benz", "AMG", "EQ"]
        case .bmwIdrive:         return ["BMW", "MINI"]
        case .audiMmi:           return ["Audi"]
        case .vwMib:             return ["Volkswagen", "SEAT", "Cupra", "Skoda"]
        case .porschePcm:        return ["Porsche"]
        case .teslaScreen:       return ["Tesla"]
        case .fordSync, .fordSync4: return ["Ford", "Lincoln"]
        case .rLink, .renaultEasyLink, .openR: return ["Renault", "Dacia"]
        case .peugeotConnected:  return ["Peugeot"]
        case .stellantisConnect: return ["Citroën", "DS", "Opel", "Vauxhall", "Chrysler", "Jeep", "Dodge"]
        case .volvaSensus:       return ["Volvo"]
        case .volvGoogleAnd:     return ["Volvo"]
        case .polestarAndroid:   return ["Polestar"]
        case .hondaConnect, .hondaAria: return ["Honda"]
        case .hyundaiBlueLink:   return ["Hyundai"]
        case .kiaCVT:            return ["Kia"]
        case .genesisConnect:    return ["Genesis"]
        case .nissanConnect:     return ["Nissan"]
        case .infinitiConnect:   return ["Infiniti"]
        case .mazdaConnect:      return ["Mazda"]
        case .subaruStarlink:    return ["Subaru"]
        case .toyotaMultimedia:  return ["Toyota"]
        case .lexusEnform:       return ["Lexus"]
        case .mitsubishiConnect: return ["Mitsubishi"]
        case .jaguarPivi:        return ["Jaguar"]
        case .landroverPivi:     return ["Land Rover", "Range Rover"]
        case .astonMartin:       return ["Aston Martin"]
        case .rollsRoyceSpirit:  return ["Rolls-Royce"]
        case .bentleyBentayga:   return ["Bentley"]
        case .ferrariConnect:    return ["Ferrari"]
        case .lamborghiniConnect:return ["Lamborghini"]
        case .bugatti:           return ["Bugatti"]
        case .nioNomi:           return ["NIO"]
        case .bydDiLink:         return ["BYD"]
        case .xpengXmart:        return ["Xpeng"]
        case .androidAutomotive: return ["Polestar", "Volvo", "Honda", "Renault", "Chevrolet"]
        default:                 return []
        }
    }
}
