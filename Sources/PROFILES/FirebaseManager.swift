//
// FirebaseManager.swift
// E-ROK-Package
//
// Created by Fabien Koré on 28/09/2025.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore
import EROKCore

@MainActor
public class FirebaseManager: ObservableObject {
    public static let shared = FirebaseManager()
    
    private let auth = Auth.auth()
    private let db = Firestore.firestore()
    
    private var isPreview: Bool {
        ProcessInfo.processInfo.environment["XCODE_RUNNING_FOR_PREVIEWS"] == "1"
    }
    
    // MARK: - Authentification
    
    public func createTempUser(email: String, password: String, pseudo: String, completion: @escaping (Result<String, Error>) -> Void) {
        if isPreview {
            print("Preview mode: Simulating temp user creation for \(email)")
            completion(.success("preview-uid"))
            return
        }
        
        auth.createUser(withEmail: email, password: password) { result, error in
            if let error = error {
                print("Erreur lors de la création de l'utilisateur : \(error.localizedDescription)")
                completion(.failure(error))
                return
            }
            guard let user = result?.user else {
                let error = NSError(domain: "FirebaseManager", code: -1, userInfo: [NSLocalizedDescriptionKey: "Utilisateur non créé"])
                print("Erreur : Utilisateur non créé")
                completion(.failure(error))
                return
            }
            
            print("Utilisateur temporaire créé avec UID : \(user.uid), email : \(user.email ?? "inconnu"), emailVerified : \(user.isEmailVerified)")
            
            // Sauvegarder email et pseudo dans pending_users
            self.saveTempUserData(userId: user.uid, email: email, pseudo: pseudo) { saveError in
                if let saveError = saveError {
                    print("Erreur lors de la sauvegarde des données temporaires : \(saveError.localizedDescription)")
                    completion(.failure(saveError))
                    return
                }
                
                // Envoyer email de vérification
                self.sendEmailVerification { verifyError in
                    if let verifyError = verifyError {
                        print("Erreur lors de l'envoi de l'email de vérification : \(verifyError.localizedDescription)")
                        completion(.failure(verifyError))
                    } else {
                        print("Email de vérification envoyé à \(email)")
                        completion(.success(user.uid))
                    }
                }
            }
        }
    }
    
    public func registerErokUser(_ erokID: EROKID, userId: String, completion: @escaping (Error?) -> Void) {
        if isPreview {
            print("Preview mode: Simulating registerErokUser for userId: \(userId)")
            completion(nil)
            return
        }
        
        print("Tentative d'enregistrement de l'EROKID pour userId: \(userId), emailVerified: \(self.auth.currentUser?.isEmailVerified ?? false)")
        
        db.collection("users").document(userId).setData(erokID.toDictionary()) { error in
            if let error = error {
                print("Erreur lors de l'enregistrement de l'EROKID : \(error.localizedDescription)")
                completion(error)
                return
            }
            print("EROKID enregistré pour userId: \(userId)")
            
            // Supprimer les données temporaires
            self.db.collection("pending_users").document(userId).delete { deleteError in
                if let deleteError = deleteError {
                    print("Erreur lors de la suppression des données temporaires : \(deleteError.localizedDescription)")
                } else {
                    print("Données temporaires supprimées pour userId: \(userId)")
                }
            }
            completion(nil)
        }
    }
    
    public func signIn(email: String, password: String, completion: @escaping (Result<EROKID, Error>) -> Void) {
        if isPreview {
            print("Preview mode: Simulating sign-in for \(email)")
            let dummyErokID = EROKID(id: "preview-\(UUID().uuidString)", email: email, firstName: "Test", lastName: "User", erokPseudo: "testPseudo", birthDate: Date())
            completion(.success(dummyErokID))
            return
        }
        
        auth.signIn(withEmail: email, password: password) { result, error in
            if let error = error {
                print("Erreur lors de la connexion : \(error.localizedDescription)")
                completion(.failure(error))
                return
            }
            guard let user = result?.user else {
                let error = NSError(domain: "FirebaseManager", code: -2, userInfo: [NSLocalizedDescriptionKey: "Connexion échouée"])
                print("Erreur : Connexion échouée")
                completion(.failure(error))
                return
            }
            
            print("Utilisateur connecté avec UID : \(user.uid)")
            
            self.fetchEROKID(userId: user.uid) { erokIDResult in
                completion(erokIDResult)
            }
        }
    }
    
    public func signOut(completion: @escaping (Error?) -> Void) {
        if isPreview {
            print("Preview mode: Simulating sign-out")
            completion(nil)
            return
        }
        
        do {
            try auth.signOut()
            print("Utilisateur déconnecté")
            completion(nil)
        } catch {
            print("Erreur lors de la déconnexion : \(error.localizedDescription)")
            completion(error)
        }
    }
    
    public func currentUser() -> User? {
        if isPreview {
            print("Preview mode: Returning nil for currentUser")
            return nil
        }
        return auth.currentUser
    }
    
    // MARK: - Gestion des données utilisateur
    
    private func saveTempUserData(userId: String, email: String, pseudo: String, completion: @escaping (Error?) -> Void) {
        if isPreview {
            print("Preview mode: Simulating saveTempUserData for userId: \(userId)")
            completion(nil)
            return
        }
        
        let tempData = ["email": email, "pseudo": pseudo]
        db.collection("pending_users").document(userId).setData(tempData) { error in
            if let error = error {
                print("Erreur lors de la sauvegarde des données temporaires : \(error.localizedDescription)")
            } else {
                print("Données temporaires enregistrées pour userId: \(userId)")
            }
            completion(error)
        }
    }
    
    public func fetchTempUserData(userId: String, completion: @escaping (Result<(email: String, pseudo: String), Error>) -> Void) {
        if isPreview {
            print("Preview mode: Simulating fetchTempUserData for userId: \(userId)")
            completion(.success((email: "preview@example.com", pseudo: "testPseudo")))
            return
        }
        
        db.collection("pending_users").document(userId).getDocument { document, error in
            if let error = error {
                print("Erreur lors de la récupération des données temporaires : \(error.localizedDescription)")
                completion(.failure(error))
                return
            }
            guard let document = document, document.exists, let data = document.data(),
                  let email = data["email"] as? String, let pseudo = data["pseudo"] as? String else {
                let error = NSError(domain: "FirebaseManager", code: -3, userInfo: [NSLocalizedDescriptionKey: "Données temporaires non trouvées"])
                print("Erreur : Données temporaires non trouvées pour userId: \(userId)")
                completion(.failure(error))
                return
            }
            
            print("Données temporaires récupérées pour userId: \(userId)")
            completion(.success((email: email, pseudo: pseudo)))
        }
    }
    
    public func fetchEROKID(userId: String, completion: @escaping (Result<EROKID, Error>) -> Void) {
        if isPreview {
            print("Preview mode: Simulating fetchEROKID for userId: \(userId)")
            let dummyErokID = EROKID(id: userId, email: "preview@example.com", firstName: "Test", lastName: "User", erokPseudo: "testPseudo", birthDate: Date())
            completion(.success(dummyErokID))
            return
        }
        
        db.collection("users").document(userId).getDocument { document, error in
            if let error = error {
                print("Erreur lors de la récupération de l'EROKID : \(error.localizedDescription)")
                completion(.failure(error))
                return
            }
            guard let document = document, document.exists else {
                let error = NSError(domain: "FirebaseManager", code: -3, userInfo: [NSLocalizedDescriptionKey: "EROKID non trouvé"])
                print("Erreur : EROKID non trouvé pour userId: \(userId)")
                completion(.failure(error))
                return
            }
            
            do {
                let data = document.data() ?? [:]
                let erokID = try EROKID(from: data)
                print("EROKID récupéré pour userId: \(userId)")
                completion(.success(erokID))
            } catch {
                print("Erreur lors du parsing de l'EROKID : \(error.localizedDescription)")
                completion(.failure(error))
            }
        }
    }
    
    // MARK: - Confirmation par email
    
    public func sendEmailVerification(completion: @escaping (Error?) -> Void) {
        if isPreview {
            print("Preview mode: Simulating email verification send")
            completion(nil)
            return
        }
        
        guard let user = auth.currentUser else {
            let error = NSError(domain: "FirebaseManager", code: -4, userInfo: [NSLocalizedDescriptionKey: "Aucun utilisateur connecté"])
            print("Erreur : Aucun utilisateur connecté pour envoi de l'email")
            completion(error)
            return
        }
        user.sendEmailVerification { error in
            if let error = error {
                print("Erreur lors de l'envoi de l'email de vérification : \(error.localizedDescription)")
            } else {
                print("Email de vérification envoyé à \(user.email ?? "inconnu")")
            }
            completion(error)
        }
    }
    
    public func isEmailVerified() -> Bool {
        if isPreview {
            print("Preview mode: Simulating email verified = true")
            return true
        }
        guard let user = auth.currentUser else {
            print("Aucun utilisateur connecté pour vérifier l'email")
            return false
        }
        user.reload { error in
            if let error = error {
                print("Erreur lors du rechargement de l'utilisateur : \(error.localizedDescription)")
            }
        }
        return user.isEmailVerified
    }
}
