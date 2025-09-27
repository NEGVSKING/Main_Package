// Sources/EROKCore/InformationType.swift
import SwiftUI
import UIKit

public enum InformationType: Codable {
    case firstName, lastName, phoneNumber, streetNumber, streetAddress, ville, postalCode, pseudo, email, password, oldPassword, confirmPassword, generic(String)

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
        case .streetNumber, .postalCode: return .numberPad
        case .email: return .emailAddress
        case .password, .oldPassword, .confirmPassword, .firstName, .lastName, .streetAddress, .ville, .pseudo, .generic: return .default
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
        case .phoneNumber, .streetNumber, .postalCode, .confirmPassword, .generic: return .done
        case .firstName, .lastName, .streetAddress, .ville, .pseudo, .email, .password, .oldPassword: return .next
        }
    }
}
