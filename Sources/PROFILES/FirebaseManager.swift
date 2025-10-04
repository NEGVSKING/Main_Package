// Sources/PROFILES/FirebaseManager.swift
// E-ROK-Package
//
// Created by Fabien Koré on 28/09/2025.

import Foundation
import FirebaseAuth
import FirebaseFirestore
import EROKCore // Pour Address et Country, si nécessaire

@MainActor
public class FirebaseManager : ObservableObject {
    public static let shared = FirebaseManager()

    private let auth = Auth.auth()
    private let db = Firestore.firestore()

    // MARK: - Authentification

    /// Crée un utilisateur et enregistre l'EROKID
    public func createUser(email: String, password: String, erokID: EROKID, completion: @escaping (Result<EROKID, Error>) -> Void) {
        auth.createUser(withEmail: email, password: password) { result, error in
            if let error = error {
                completion(.failure(error))
                return
            }
            guard let user = result?.user else {
                completion(.failure(NSError(domain: "FirebaseManager", code: -1, userInfo: [NSLocalizedDescriptionKey: "Utilisateur non créé"])))
                return
            }

            // Enregistrer EROKID dans Firestore
            self.saveEROKID(erokID, userId: user.uid) { saveError in
                if let saveError = saveError {
                    completion(.failure(saveError))
                    return
                }

                // Envoyer email de vérification
                self.sendEmailVerification { verifyError in
                    if let verifyError = verifyError {
                        completion(.failure(verifyError))
                    } else {
                        completion(.success(erokID))
                    }
                }
            }
        }
    }

    /// Se connecte avec email et mot de passe
    public func signIn(email: String, password: String, completion: @escaping (Result<EROKID, Error>) -> Void) {
        auth.signIn(withEmail: email, password: password) { result, error in
            if let error = error {
                completion(.failure(error))
                return
            }
            guard let user = result?.user else {
                completion(.failure(NSError(domain: "FirebaseManager", code: -2, userInfo: [NSLocalizedDescriptionKey: "Connexion échouée"])))
                return
            }

            // Récupérer EROKID depuis Firestore
            self.fetchEROKID(userId: user.uid) { erokIDResult in
                completion(erokIDResult)
            }
        }
    }

    /// Se déconnecte
    public func signOut(completion: @escaping (Error?) -> Void) {
        do {
            try auth.signOut()
            completion(nil)
        } catch {
            completion(error)
        }
    }

    /// Récupère l'utilisateur courant
    public func currentUser() -> User? {
        return auth.currentUser
    }

    // MARK: - Enregistrement EROKID dans Firestore

    public func saveEROKID(_ erokID: EROKID, userId: String, completion: @escaping (Error?) -> Void) {
        db.collection("users").document(userId).setData(erokID.toDictionary()) { error in
            completion(error)
        }
    }

    public func fetchEROKID(userId: String, completion: @escaping (Result<EROKID, Error>) -> Void) {
        db.collection("users").document(userId).getDocument { document, error in
            if let error = error {
                completion(.failure(error))
                return
            }
            guard let document = document, document.exists else {
                completion(.failure(NSError(domain: "FirebaseManager", code: -3, userInfo: [NSLocalizedDescriptionKey: "EROKID non trouvé"])))
                return
            }

            do {
                let data = document.data() ?? [:]
                let erokID = try EROKID(from: data) // Ligne 106 corrigée : utilise directement l'init de convenance
                completion(.success(erokID))
            } catch {
                completion(.failure(error))
            }
        }
    }

    // MARK: - Confirmation par email

    /// Envoie un email de vérification
    public func sendEmailVerification(completion: @escaping (Error?) -> Void) {
        guard let user = auth.currentUser else {
            completion(NSError(domain: "FirebaseManager", code: -4, userInfo: [NSLocalizedDescriptionKey: "Aucun utilisateur connecté"]))
            return
        }
        user.sendEmailVerification { error in
            completion(error)
        }
    }

    /// Vérifie si l’email est vérifié
    public func isEmailVerified() -> Bool {
        guard let user = auth.currentUser else { return false }
        return user.isEmailVerified
    }
}
