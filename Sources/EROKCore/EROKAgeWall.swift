//
//  EROKAgeWall.swift
//  E-ROK-Package
//
//  Created by Fabien Koré on 24/01/2026
//  Age Wall générique pour toutes les apps E-ROK
//

import SwiftUI

/// Age Wall générique pour contrôler l'accès aux apps E-ROK selon l'âge minimum requis
public struct EROKAgeWall<Content: View>: View {
    // MARK: - Configuration
    
    /// Nom de l'application (ex: "SHIFT", "FIT", "MYMECA")
    public let appName: String
    
    /// Âge minimum requis pour accéder à l'app (ex: 18, 16, 12)
    public let minimumAge: Int
    
    /// Raison de la restriction d'âge (ex: "Contenu lié à l'alcool")
    public let reason: String
    
    /// Logo de l'app (optionnel, affichage dans la vue de refus)
    public let appLogo: Image?
    
    /// Couleur principale de l'app (pour personnalisation)
    public let accentColor: Color
    
    // MARK: - Date de naissance utilisateur
    
    /// Date de naissance de l'utilisateur (depuis E-ROK ID ou autre source)
    @Binding public var userBirthDate: BirthDate?
    
    /// Callback pour déconnexion (fourni par l'app)
    public let onSignOut: () -> Void
    
    // MARK: - Contenu
    
    /// Contenu de l'app à afficher si l'accès est autorisé
    public let content: () -> Content
    
    // MARK: - Init
    
    public init(
        appName: String,
        minimumAge: Int,
        reason: String = "",
        appLogo: Image? = nil,
        accentColor: Color = .blue,
        userBirthDate: Binding<BirthDate?>,
        onSignOut: @escaping () -> Void = {},
        @ViewBuilder content: @escaping () -> Content
    ) {
        self.appName = appName
        self.minimumAge = minimumAge
        self.reason = reason
        self.appLogo = appLogo
        self.accentColor = accentColor
        self._userBirthDate = userBirthDate
        self.onSignOut = onSignOut
        self.content = content
    }
    
    // MARK: - Body
    
    public var body: some View {
        Group {
            if let birthDate = userBirthDate {
                // ✅ Date de naissance présente → Vérifier âge
                if Validation.isAtLeastAge(birthDate, minimumAge: minimumAge) {
                    // ✅ Âge suffisant → Afficher contenu
                    content()
                } else {
                    // ❌ Âge insuffisant → Bloquer accès
                    ageWallDeniedView(userAge: birthDate.calculateAge())
                }
            } else {
                // ❌ Pas de date de naissance → Rediriger authentification
                ageWallNoAccountView()
            }
        }
    }
    
    // MARK: - Vue Accès Refusé (âge insuffisant)
    
    @ViewBuilder
    private func ageWallDeniedView(userAge: Int) -> some View {
        ZStack {
            // Dégradé background
            LinearGradient(
                colors: [accentColor.opacity(0.1), accentColor.opacity(0.05)],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            
            VStack(spacing: 32) {
                Spacer()
                
                // Logo app (si fourni)
                if let appLogo = appLogo {
                    appLogo
                        .resizable()
                        .scaledToFit()
                        .frame(height: 100)
                        .padding(.bottom, 16)
                }
                
                // Icône avertissement
                ZStack {
                    Circle()
                        .fill(Color.red.opacity(0.15))
                        .frame(width: 140, height: 140)
                    
                    Circle()
                        .fill(Color.red.opacity(0.25))
                        .frame(width: 120, height: 120)
                    
                    Image(systemName: "exclamationmark.triangle.fill")
                        .font(.system(size: 60))
                        .foregroundColor(.red)
                }
                .shadow(color: .red.opacity(0.3), radius: 20)
                
                VStack(spacing: 16) {
                    Text("Accès Refusé")
                        .font(.system(size: 36, weight: .bold))
                        .foregroundColor(.primary)
                    
                    Text("\(appName) est réservé aux personnes de \(minimumAge) ans et plus")
                        .font(.system(size: 18, weight: .medium))
                        .foregroundColor(.secondary)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 40)
                    
                    if !reason.isEmpty {
                        Text(reason)
                            .font(.system(size: 16))
                            .foregroundColor(.gray)
                            .multilineTextAlignment(.center)
                            .padding(.horizontal, 40)
                            .padding(.top, 8)
                    }
                    
                    // Info utilisateur
                    VStack(spacing: 12) {
                        HStack(spacing: 16) {
                            VStack(alignment: .leading, spacing: 4) {
                                Text("Ton âge")
                                    .font(.system(size: 14))
                                    .foregroundColor(.gray)
                                Text("\(userAge) ans")
                                    .font(.system(size: 24, weight: .bold))
                                    .foregroundColor(.red)
                            }
                            
                            Divider()
                                .frame(height: 60)
                            
                            VStack(alignment: .leading, spacing: 4) {
                                Text("Requis")
                                    .font(.system(size: 14))
                                    .foregroundColor(.gray)
                                Text("\(minimumAge) ans")
                                    .font(.system(size: 24, weight: .bold))
                                    .foregroundColor(.green)
                            }
                        }
                        .padding()
                        .background(Color.white.opacity(0.8))
                        .cornerRadius(16)
                        .shadow(color: .black.opacity(0.1), radius: 10)
                    }
                    .padding(.horizontal, 40)
                    .padding(.top, 24)
                }
                
                // Bouton retour authentification
                Button(action: onSignOut) {
                    HStack(spacing: 8) {
                        Image(systemName: "arrow.left.circle.fill")
                            .font(.system(size: 20))
                        Text("Se déconnecter")
                            .font(.system(size: 18, weight: .bold))
                    }
                    .foregroundColor(.white)
                    .padding(.horizontal, 40)
                    .padding(.vertical, 16)
                    .background(
                        LinearGradient(
                            colors: [Color.red, Color.red.opacity(0.8)],
                            startPoint: .leading,
                            endPoint: .trailing
                        )
                    )
                    .cornerRadius(16)
                    .shadow(color: .red.opacity(0.4), radius: 10)
                }
                .padding(.top, 32)
                
                Spacer()
            }
            .padding()
        }
    }
    
    // MARK: - Vue Pas de Compte
    
    @ViewBuilder
    private func ageWallNoAccountView() -> some View {
        ZStack {
            // Dégradé background
            LinearGradient(
                colors: [accentColor.opacity(0.1), accentColor.opacity(0.05)],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            
            VStack(spacing: 32) {
                Spacer()
                
                // Logo app (si fourni)
                if let appLogo = appLogo {
                    appLogo
                        .resizable()
                        .scaledToFit()
                        .frame(height: 100)
                        .padding(.bottom, 16)
                }
                
                // Icône utilisateur
                ZStack {
                    Circle()
                        .fill(accentColor.opacity(0.15))
                        .frame(width: 140, height: 140)
                    
                    Circle()
                        .fill(accentColor.opacity(0.25))
                        .frame(width: 120, height: 120)
                    
                    Image(systemName: "person.crop.circle.badge.exclamationmark")
                        .font(.system(size: 70))
                        .foregroundColor(accentColor)
                }
                .shadow(color: accentColor.opacity(0.3), radius: 20)
                
                VStack(spacing: 16) {
                    Text("Connexion Requise")
                        .font(.system(size: 32, weight: .bold))
                        .foregroundColor(.primary)
                    
                    Text("Tu dois te connecter avec ton E-ROK ID pour accéder à \(appName)")
                        .font(.system(size: 18, weight: .medium))
                        .foregroundColor(.secondary)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 40)
                    
                    Text("L'E-ROK ID est ton identifiant unique pour toutes les applications E-ROK")
                        .font(.system(size: 16))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.center)
                        .padding(.horizontal, 40)
                        .padding(.top, 8)
                }
                
                Spacer()
            }
            .padding()
        }
    }
}

// MARK: - Preview

#Preview("Mineur - Refusé") {
    @Previewable @State var birthDate: BirthDate? = BirthDate(day: 1, month: .janvier, year: 2009) // 15 ans
    
    EROKAgeWall(
        appName: "SHIFT",
        minimumAge: 18,
        reason: "Cette application contient du contenu lié à l'alcool et à la vie nocturne",
        appLogo: Image(systemName: "moonphase.waning.gibbous"),
        accentColor: .purple,
        userBirthDate: $birthDate,
        onSignOut: { print("Déconnexion") }
    ) {
        Text("Contenu SHIFT (ne devrait pas apparaître)")
            .font(.title)
    }
}

#Preview("Majeur - Autorisé") {
    @Previewable @State var birthDate: BirthDate? = BirthDate(day: 1, month: .janvier, year: 1999) // 25 ans
    
    EROKAgeWall(
        appName: "SHIFT",
        minimumAge: 18,
        reason: "Cette application contient du contenu lié à l'alcool et à la vie nocturne",
        appLogo: Image(systemName: "moonphase.waning.gibbous"),
        accentColor: .purple,
        userBirthDate: $birthDate,
        onSignOut: { print("Déconnexion") }
    ) {
        VStack(spacing: 20) {
            Image(systemName: "checkmark.circle.fill")
                .font(.system(size: 80))
                .foregroundColor(.green)
            
            Text("✅ Accès autorisé")
                .font(.title)
                .foregroundColor(.green)
            
            Text("Contenu SHIFT visible")
                .font(.body)
                .foregroundColor(.secondary)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.green.opacity(0.1))
    }
}

#Preview("Pas de compte") {
    @Previewable @State var birthDate: BirthDate? = nil
    
    EROKAgeWall(
        appName: "SHIFT",
        minimumAge: 18,
        reason: "Cette application contient du contenu lié à l'alcool et à la vie nocturne",
        appLogo: Image(systemName: "moonphase.waning.gibbous"),
        accentColor: .purple,
        userBirthDate: $birthDate,
        onSignOut: { print("Déconnexion") }
    ) {
        Text("Contenu SHIFT")
    }
}
