// Sources/EROKCore/Validation.swift
// E-ROK-Package
//
// Created by Fabien Koré on 10/06/2025.

import Foundation

/// A structure providing validation methods for user input data in E-ROK iOS applications.
public struct Validation {
    // Valider un email
    public static func isValidEmail(_ email: String) -> Bool {
        let emailRegex = "^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}$"
        let predicate = NSPredicate(format: "SELF MATCHES %@", emailRegex)
        return predicate.evaluate(with: email)
    }
    
    // Valider un prénom (min 4 caractères, lettres, accents, -, pas de ./:=!?+*)
    public static func isValidFirstName(_ firstName: String) -> Bool {
        let nameRegex = "^[a-zA-ZàáâãäåçèéêëìíîïòóôõöùúûüýÿÀÁÂÃÄÅÇÈÉÊËÌÍÎÏÒÓÔÕÖÙÚÛÜÝŸ-]{4,}$"
        let predicate = NSPredicate(format: "SELF MATCHES %@", nameRegex)
        return predicate.evaluate(with: firstName)
    }
    
    // Valider un nom de famille (min 2 caractères, mêmes règles que prénom)
    public static func isValidLastName(_ lastName: String) -> Bool {
        let nameRegex = "^[a-zA-ZàáâãäåçèéêëìíîïòóôõöùúûüýÿÀÁÂÃÄÅÇÈÉÊËÌÍÎÏÒÓÔÕÖÙÚÛÜÝŸ-]{2,}$"
        let predicate = NSPredicate(format: "SELF MATCHES %@", nameRegex)
        return predicate.evaluate(with: lastName)
    }
    
    // Valider un pseudo (min 4 caractères, lettres, chiffres, -, pas de ./:=!?+*)
    public static func isValidPseudo(_ pseudo: String) -> Bool {
        let pseudoRegex = "^[a-zA-Z0-9-]{4,}$"
        let predicate = NSPredicate(format: "SELF MATCHES %@", pseudoRegex)
        return predicate.evaluate(with: pseudo)
    }
    
    // Valider un numéro (âge, numéro de rue, code postal)
    public static func isValidNumber(_ number: String) -> Bool {
        let numberRegex = "^[0-9]+$"
        let predicate = NSPredicate(format: "SELF MATCHES %@", numberRegex)
        return predicate.evaluate(with: number)
    }
    
    // Valider un numéro de téléphone (chiffres, +, espaces)
    public static func isValidPhoneNumber(_ phoneNumber: String) -> Bool {
        let phoneRegex = "^\\+?[0-9 ]+$"
        let predicate = NSPredicate(format: "SELF MATCHES %@", phoneRegex)
        return predicate.evaluate(with: phoneNumber)
    }
    
    // Valider un nom de rue (lettres, accents, espaces, -, pas de chiffres)
    public static func isValidStreetName(_ streetName: String) -> Bool {
        let streetRegex = "^[a-zA-ZàáâãäåçèéêëìíîïòóôõöùúûüýÿÀÁÂÃÄÅÇÈÉÊËÌÍÎÏÒÓÔÕÖÙÚÛÜÝŸ -]+$"
        let predicate = NSPredicate(format: "SELF MATCHES %@", streetRegex)
        return predicate.evaluate(with: streetName)
    }
    
    // Valider la présence d'une majuscule
    public static func isValidUppercase(_ password: String) -> Bool {
        let regex = ".*[A-Z]+.*"
        let predicate = NSPredicate(format: "SELF MATCHES %@", regex)
        return predicate.evaluate(with: password)
    }
    
    // Valider la présence d'une minuscule
    public static func isValidLowercase(_ password: String) -> Bool {
        let regex = ".*[a-z]+.*"
        let predicate = NSPredicate(format: "SELF MATCHES %@", regex)
        return predicate.evaluate(with: password)
    }
    
    // Valider la présence d'un caractère spécial
    public static func isValidSpecialCharacter(_ password: String) -> Bool {
        let regex = ".*[!@#$%^&*()]+.*"
        let predicate = NSPredicate(format: "SELF MATCHES %@", regex)
        return predicate.evaluate(with: password)
    }
    
    // Valider un mot de passe (min 8 caractères, majuscule, minuscule, caractère spécial)
    public static func isValidPassword(_ password: String) -> Bool {
        let isLongEnough = password.count >= 8
        let hasUppercase = isValidUppercase(password)
        let hasLowercase = isValidLowercase(password)
        let hasSpecialChar = isValidSpecialCharacter(password)
        return isLongEnough && hasUppercase && hasLowercase && hasSpecialChar
    }
    
    // ✅ NOUVELLE FONCTION GÉNÉRIQUE - Vérifier âge minimum personnalisable
    /// Vérifie si l'utilisateur a au moins l'âge minimum requis
    /// - Parameters:
    ///   - birthDate: Date de naissance de l'utilisateur
    ///   - minimumAge: Âge minimum requis (ex: 12, 16, 18)
    /// - Returns: `true` si l'utilisateur a l'âge minimum, `false` sinon
    public static func isAtLeastAge(_ birthDate: BirthDate, minimumAge: Int) -> Bool {
        let currentDate = Date()
        let calendar = Calendar.current
        let currentYear = calendar.component(.year, from: currentDate)
        let currentMonth = calendar.component(.month, from: currentDate)
        let currentDay = calendar.component(.day, from: currentDate)
        
        let birthYear = birthDate.year
        let birthMonth = birthDate.month.number
        let birthDay = birthDate.day
        
        let age = currentYear - birthYear
        let hasHadBirthdayThisYear = (birthMonth < currentMonth) || (birthMonth == currentMonth && birthDay <= currentDay)
        let actualAge = hasHadBirthdayThisYear ? age : age - 1
        return actualAge >= minimumAge
    }
    
    // ✅ RACCOURCIS POUR ÂGES COURANTS
    
    /// Vérifie si l'utilisateur a au moins 12 ans (E-ROK ID minimum)
    public static func isAtLeast12YearsOld(_ birthDate: BirthDate) -> Bool {
        return isAtLeastAge(birthDate, minimumAge: 12)
    }
    
    /// Vérifie si l'utilisateur a au moins 15 ans (ancienne fonction conservée)
    public static func isAtLeast15YearsOld(_ birthDate: BirthDate) -> Bool {
        return isAtLeastAge(birthDate, minimumAge: 15)
    }
    
    /// Vérifie si l'utilisateur a au moins 16 ans (MYMECA, permis de conduire)
    public static func isAtLeast16YearsOld(_ birthDate: BirthDate) -> Bool {
        return isAtLeastAge(birthDate, minimumAge: 16)
    }
    
    /// Vérifie si l'utilisateur a au moins 18 ans (SHIFT, majorité légale)
    public static func isAtLeast18YearsOld(_ birthDate: BirthDate) -> Bool {
        return isAtLeastAge(birthDate, minimumAge: 18)
    }
    
    // Vérifier que le mot de passe et la confirmation concordent
    public static func isPasswordMatching(_ password: String, _ confirmPassword: String) -> Bool {
        return password == confirmPassword
    }
    
    // Vérifier une ville (lettres, accents, espaces, -, pas de chiffres)
    public static func isValidCity(_ city: String) -> Bool {
        let cityRegex = "^[a-zA-ZàáâãäåçèéêëìíîïòóôõöùúûüýÿÀÁÂÃÄÅÇÈÉÊËÌÍÎÏÒÓÔÕÖÙÚÛÜÝŸ -]+$"
        let predicate = NSPredicate(format: "SELF MATCHES %@", cityRegex)
        return predicate.evaluate(with: city)
    }
    
    // Vérifier un code postal (5 chiffres pour un format simplifié)
    public static func isValidPostalCode(_ postalCode: String) -> Bool {
        let postalCodeRegex = "^[0-9]{5}$"
        let predicate = NSPredicate(format: "SELF MATCHES %@", postalCodeRegex)
        return predicate.evaluate(with: postalCode)
    }
    
    // Vérifier un numéro de rue (entier positif ou alphanumérique simple, ex. "12", "12A")
    public static func isValidStreetNumber(_ streetNumber: String) -> Bool {
        let streetNumberRegex = "^[0-9]+[A-Za-z]?$"
        let predicate = NSPredicate(format: "SELF MATCHES %@", streetNumberRegex)
        return predicate.evaluate(with: streetNumber)
    }
}
