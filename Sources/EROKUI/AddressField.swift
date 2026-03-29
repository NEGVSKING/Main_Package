// Sources/EROKUI/AddressField.swift
// E-ROK Package

import SwiftUI
import MapKit

/// Champ de recherche d'adresse avec géocodage MapKit en temps réel.
/// Affiche la localisation trouvée et exporte automatiquement les données (ville, pays, CP, rue) pour générer des objets 'Address'
public struct AddressField: View {
    
    @Binding public var searchText: String
    @Binding public var city: String
    @Binding public var postalCode: String
    @Binding public var countryCode: String
    @Binding public var street: String
    @Binding public var streetNumber: String
    
    @State private var selectedPlacemark: CLPlacemark?
    @State private var isSearching = false
    @State private var errorMessage: String?
    
    public let textColor: Color
    public let borderColor: Color
    
    // Constantes grille E-ROK
    private let cornerRadius: CGFloat = 16
    private let fieldHeight: CGFloat = 56
    private let horizontalPadding: CGFloat = 16
    private let iconSize: CGFloat = 20
    
    public init(
        searchText: Binding<String>,
        city: Binding<String> = .constant(""),
        postalCode: Binding<String> = .constant(""),
        countryCode: Binding<String> = .constant(""),
        street: Binding<String> = .constant(""),
        streetNumber: Binding<String> = .constant(""),
        textColor: Color = .primary,
        borderColor: Color = .blue
    ) {
        self._searchText = searchText
        self._city = city
        self._postalCode = postalCode
        self._countryCode = countryCode
        self._street = street
        self._streetNumber = streetNumber
        self.textColor = textColor
        self.borderColor = borderColor
    }
    
    public var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            
            HStack(spacing: 12) {
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .scaledToFit()
                    .frame(width: iconSize, height: iconSize)
                    .foregroundStyle(isSearching ? borderColor : .secondary)
                
                TextField("Code postal, rue, ville...", text: $searchText)
                    .textInputAutocapitalization(.never)
                    .autocorrectionDisabled(true)
                
                if isSearching {
                    ProgressView()
                        .controlSize(.small)
                } else if !searchText.isEmpty {
                    Button {
                        searchText = ""
                    } label: {
                        Image(systemName: "xmark.circle.fill")
                            .foregroundStyle(.secondary)
                    }
                }
            }
            .padding(.horizontal, horizontalPadding)
            .frame(height: fieldHeight)
            .background(
                RoundedRectangle(cornerRadius: cornerRadius)
                    .stroke(isSearching ? borderColor : borderColor.opacity(0.4), lineWidth: isSearching ? 2 : 1)
                    .background(Color(uiColor: .systemBackground).cornerRadius(cornerRadius))
                    .shadow(color: isSearching ? borderColor.opacity(0.15) : .clear, radius: 4)
            )
            .animation(.spring(response: 0.35, dampingFraction: 0.75), value: isSearching)
            
            // Feedback Group
            Group {
                if let error = errorMessage {
                    Text(error)
                        .font(.caption)
                        .foregroundStyle(.red)
                        .padding(.leading, 8)
                        .transition(.opacity.combined(with: .move(edge: .top)))
                } else if let placemark = selectedPlacemark {
                    HStack(spacing: 6) {
                        Image(systemName: "checkmark.circle.fill")
                            .foregroundStyle(.green)
                            .font(.system(size: 14))
                        Text(placemark.erokFormattedAddress)
                            .font(.system(size: 14, weight: .semibold))
                            .foregroundStyle(textColor.opacity(0.9))
                    }
                    .padding(.leading, 8)
                    .transition(.opacity.combined(with: .move(edge: .top)))
                }
            }
            .animation(.spring(response: 0.35, dampingFraction: 0.75), value: errorMessage)
            .animation(.spring(response: 0.35, dampingFraction: 0.75), value: selectedPlacemark)
        }
        .task(id: searchText) {
            // Debounce natif SwiftUI 6 : Annulation automatique si searchText change
            guard !searchText.isEmpty else {
                resetFields()
                isSearching = false
                return
            }
            
            isSearching = true
            do {
                try await Task.sleep(nanoseconds: 700_000_000)
                await performSearch(query: searchText)
            } catch {
                // Tâche annulée, on ne fait rien
            }
        }
    }
    
    @MainActor
    private func resetFields() {
        selectedPlacemark = nil
        errorMessage = nil
        city = ""
        postalCode = ""
        countryCode = ""
        street = ""
        streetNumber = ""
    }
    
    @MainActor
    private func performSearch(query: String) async {
        let request = MKLocalSearch.Request()
        request.naturalLanguageQuery = query
        // On ne restreint plus à une coordonnée fixe, MapKit se base sur l'IP/Région globale
        
        do {
            let search = MKLocalSearch(request: request)
            let response = try await search.start()
            
            if let firstItem = response.mapItems.first {
                let placemark = firstItem.placemark
                self.selectedPlacemark = placemark
                self.errorMessage = nil
                
                // Extraction magique pour remplir la structure `Address` en Parent View !
                self.city = placemark.locality ?? ""
                self.postalCode = placemark.postalCode ?? ""
                self.countryCode = placemark.isoCountryCode ?? ""
                self.street = placemark.thoroughfare ?? ""
                self.streetNumber = placemark.subThoroughfare ?? ""
            } else {
                resetFields()
                self.errorMessage = "Auncun résultat"
            }
        } catch {
            resetFields()
            self.errorMessage = "Recherche introuvable"
        }
        self.isSearching = false
    }
}

extension CLPlacemark {
    var erokFormattedAddress: String {
        let parts = [subThoroughfare, thoroughfare, postalCode, locality, country]
        return parts.compactMap { $0 }.filter { !$0.isEmpty }.joined(separator: ", ")
    }
}

#Preview {
    @Previewable @State var text = "13012"
    @Previewable @State var city = ""
    @Previewable @State var zip = ""
    @Previewable @State var countryCode = ""
    
    return VStack(spacing: 20) {
        AddressField(
            searchText: $text,
            city: $city,
            postalCode: $zip,
            countryCode: $countryCode,
            textColor: .primary,
            borderColor: .blue
        )
        
        if !city.isEmpty {
            VStack(alignment: .leading, spacing: 5) {
                Text("Extrait en temps réel :")
                    .font(.headline)
                Text("Ville : \(city)")
                Text("Code Postal : \(zip)")
                Text("Pays (ISO) : \(countryCode)")
            }
            .font(.caption)
            .padding()
            .background(Color.gray.opacity(0.1).cornerRadius(8))
        }
    }
    .padding(20)
}
