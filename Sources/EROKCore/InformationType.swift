//
//  InformationType.swift
//  E-ROK-Package
//
//  Created by Fabien Koré on 03/08/2025.
//


// Sources/EROKCore/InformationType.swift
// E-ROK-Package
//
// Created by Fabien Koré on 09/06/2025.

import Foundation
import SwiftUI
import UIKit

public enum InformationType: Codable {
    case firstName
    case lastName
    case phoneNumber
    case streetNumber
    case streetAddress
    case ville
    case postalCode
    case pseudo
    case email
    case password
    case oldPassword
    case confirmPassword
    case generic(String)
    
    public var displayName: String {
        switch self {
        case .firstName: return "Prénom"
        case .lastName: return "Nom"
        case .phoneNumber: return "Numéro de téléphone"
        case .streetNumber: return "Numéro de rue"
        case .streetAddress: return "Nom de la rue"
        case .ville: return "Ville"
        case .postalCode: return "Code postal"
        case .pseudo: return "Pseudo"
        case .email: return "Email"
        case .password: return "Mot de passe"
        case .oldPassword: return "Ancien mot de passe"
        case .confirmPassword: return "Confirmer le mot de passe"
        case .generic(let label): return label
        }
    }
    
    public var keyboardType: UIKeyboardType {
        switch self {
        case .phoneNumber: return .phonePad
        case .streetNumber: return .numberPad
        case .postalCode: return .numberPad
        case .email: return .emailAddress
        case .password, .oldPassword, .confirmPassword, .firstName, .lastName, .streetAddress, .ville, .pseudo, .generic:
            return .default
        }
    }
    
    public var textContentType: UITextContentType? {
        switch self {
        case .firstName: return .givenName
        case .lastName: return .familyName
        case .phoneNumber: return .telephoneNumber
        case .streetNumber: return nil
        case .streetAddress: return .streetAddressLine1
        case .ville: return .addressCity
        case .postalCode: return .postalCode
        case .pseudo: return nil
        case .email: return .emailAddress
        case .password, .oldPassword, .confirmPassword: return .password
        case .generic: return nil
        }
    }
    
    public var submitLabel: SubmitLabel {
        switch self {
        case .phoneNumber: return .done
        case .streetNumber: return .done
        case .postalCode: return .done
        case .confirmPassword: return .done
        case .generic: return .done
        case .firstName: return .next
        case .lastName: return .next
        case .streetAddress: return .next
        case .ville: return .next
        case .pseudo: return .next
        case .email: return .next
        case .password: return .next
        case .oldPassword: return .next
        }
    }
}
