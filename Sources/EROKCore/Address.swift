// Sources/EROKCore/Address.swift
// E-ROK-Package
//
// Created by Fabien Koré on 10/06/2025.

import Foundation

public struct Address: Codable {
    public let streetNumber: String?
    public let streetName: String?
    public let city: String?
    public let postalCode: String?
    public let country: Country

    public init(streetNumber: String?, streetName: String?, city: String?, postalCode: String?, country: Country) {
        self.streetNumber = streetNumber
        self.streetName = streetName
        self.city = city
        self.postalCode = postalCode
        self.country = country
    }

    // Nouveau init de convenance pour [String: Any] (pour Firestore)
    public init(from dictionary: [String: Any]) throws {
        self.streetNumber = dictionary["streetNumber"] as? String
        self.streetName = dictionary["streetName"] as? String
        self.city = dictionary["city"] as? String
        self.postalCode = dictionary["postalCode"] as? String
        guard let countryRaw = dictionary["country"] as? String, let country = Country(rawValue: countryRaw) else {
            throw NSError(domain: "Address", code: -1, userInfo: [NSLocalizedDescriptionKey: "Pays manquant ou invalide"])
        }
        self.country = country
    }

    public var formattedAddress: String {
        let components = [streetNumber, streetName, postalCode, city, country.displayName]
        return components.compactMap { $0 }.joined(separator: ", ")
    }

    public var isComplete: Bool {
        return streetNumber?.isEmpty == false &&
               streetName?.isEmpty == false &&
               city?.isEmpty == false &&
               postalCode?.isEmpty == false &&
               country != .none
    }

    public func toDictionary() -> [String: Any] {
        return [
            "streetNumber": streetNumber ?? "",
            "streetName": streetName ?? "",
            "city": city ?? "",
            "postalCode": postalCode ?? "",
            "country": country.rawValue
        ]
    }
}
