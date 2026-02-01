// Sources/EROKViews/AddressField.swift
// E-ROK Package
//
// Created by Fabien Koré on 04/08/2024.
// Modernisé & amélioré pour cohérence E-ROK Group – Janvier 2026

import SwiftUI
@preconcurrency import MapKit

/// Champ de recherche d'adresse avec géocodage MapKit en temps réel.
/// Affiche la localisation trouvée (ville, sous-localité, pays) ou une erreur.
/// Respecte la grille E-ROK : tout en multiples de 4.
public struct AddressField: View {
    
    @Binding var searchText: String
    
    @State private var selectedPlacemark: CLPlacemark?
    @State private var isSearching = false
    @State private var errorMessage: String?
    
    let textColor: Color
    let borderColor: Color
    
    // Constantes grille E-ROK (multiples de 4)
    private let cornerRadius: CGFloat     = 16
    private let fieldHeight: CGFloat      = 48
    private let horizontalPadding: CGFloat = 16
    private let verticalSpacing: CGFloat   = 8
    private let iconSize: CGFloat         = 20
    
    public init(
        searchText: Binding<String>,
        textColor: Color = .primary,
        borderColor: Color = .blue
    ) {
        self._searchText = searchText
        self.textColor = textColor
        self.borderColor = borderColor
    }
    
    public var body: some View {
        VStack(alignment: .leading, spacing: verticalSpacing) {
            
            groupFeedback
            
            RoundedRectangle(cornerRadius: cornerRadius)
                .fill(.ultraThinMaterial)
                .overlay {
                    RoundedRectangle(cornerRadius: cornerRadius)
                        .stroke(borderColor.opacity(0.5), lineWidth: 1.5)
                }
                .overlay(alignment: .trailing) {
                    if isSearching {
                        ProgressView()
                            .controlSize(.small)
                            .padding(.trailing, horizontalPadding)
                    }
                }
                .overlay(alignment: .leading) {
                    HStack(spacing: 12) {
                        Image(systemName: "magnifyingglass")
                            .resizable()
                            .scaledToFit()
                            .frame(width: iconSize, height: iconSize)
                            .foregroundStyle(.secondary)
                        
                        TextField("Code postal, ville, arrondissement…", text: $searchText)
                            .textInputAutocapitalization(.never)
                            .autocorrectionDisabled()
                    }
                    .padding(.horizontal, horizontalPadding)
                }
                .frame(height: fieldHeight)
        }
        .onChange(of: searchText) {
            // Syntaxe moderne : lit directement la valeur actuelle
            if searchText.isEmpty {
                selectedPlacemark = nil
                errorMessage = nil
                isSearching = false
            }
        }
        .onChange(of: searchText) {
            // Déclenche la recherche debounce seulement si texte non vide
            if !searchText.isEmpty {
                Task {
                    await debouncedSearch(query: searchText)
                }
            }
        }
        .onAppear {
            if !searchText.isEmpty {
                Task {
                    await performSearch(query: searchText)
                }
            }
        }
    }
    
    @ViewBuilder
    private var groupFeedback: some View {
        if let error = errorMessage {
            Text(error)
                .font(.caption)
                .foregroundStyle(.red)
                .multilineTextAlignment(.leading)
        } else if let placemark = selectedPlacemark {
            Text(placemark.formattedAddress)
                .font(.subheadline)
                .foregroundStyle(textColor.opacity(0.9))
                .multilineTextAlignment(.leading)
        }
    }
    
    // Debounce ~500ms
    private func debouncedSearch(query: String) async {
        isSearching = true
        errorMessage = nil
        
        do {
            try await Task.sleep(nanoseconds: 500_000_000)
            if Task.isCancelled { return }
            await performSearch(query: query)
        } catch {
            // sleep annulé → ignoré
        }
    }
    
    private func performSearch(query: String) async {
        guard !query.isEmpty else {
            selectedPlacemark = nil
            errorMessage = nil
            isSearching = false
            return
        }
        
        let request = MKLocalSearch.Request()
        request.naturalLanguageQuery = query
        
        request.region = MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 46.603354, longitude: 1.719103),
            span: MKCoordinateSpan(latitudeDelta: 10, longitudeDelta: 10)
        )
        
        do {
            let search = MKLocalSearch(request: request)
            let response = try await search.start()
            
            if let firstItem = response.mapItems.first {
                selectedPlacemark = firstItem.placemark
                errorMessage = nil
            } else {
                selectedPlacemark = nil
                errorMessage = "Aucun résultat pour « \(query) »"
            }
        } catch {
            selectedPlacemark = nil
            errorMessage = "Erreur : \(error.localizedDescription)"
        }
        
        isSearching = false
    }
}

// MARK: - Extension pour affichage propre
extension CLPlacemark {
    var formattedAddress: String {
        var parts: [String] = []
        
        if let sub = subLocality, !sub.isEmpty { parts.append(sub) }
        if let city = locality { parts.append(city) }
        if let country = country { parts.append(country) }
        
        return parts.joined(separator: ", ")
    }
}

// MARK: - Previews (sans background)
#Preview("Vide") {
    AddressField(searchText: .constant(""), textColor: .black, borderColor: .black)
        .padding(20)
}

#Preview("En saisie") {
    AddressField(searchText: .constant("Marseille"), textColor: .black, borderColor: .black)
        .padding(20)
}

#Preview("Avec résultat") {
    AddressField(searchText: .constant("13012"), textColor: .black, borderColor: .black)
        .padding(20)
}

#Preview("Erreur") {
    AddressField(searchText: .constant("zzzzz"), textColor: .black, borderColor: .black)
        .padding(20)
}
