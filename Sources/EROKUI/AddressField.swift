//
//  AddressField.swift
//  MyMeca
//
//  Created by Fabien Koré on 27/09/2025.
//


// Sources/EROKViews/AddressField.swift
// E-ROK-Package
//
// Created by Fabien Koré on 04/08/2024.

import SwiftUI
import MapKit

public struct AddressField: View {
    @Binding var searchText: String
    @State private var country: String = ""
    @State private var city: String = ""
    @State private var subLocality: String = ""
    @State private var errorMessage: String?

    public var body: some View {
        VStack(spacing: 8) {
            if let error = errorMessage {
                Text(error)
                    .font(.caption)
                    .foregroundStyle(.red)
                    .padding(.bottom, 4)
            } else if !city.isEmpty {
                Text("\(city)\(subLocality.isEmpty ? "" : ", \(subLocality)"), \(country)")
                    .font(.subheadline)
                    .padding(.bottom, 4)
            }
            
            ZStack {
                RoundedRectangle(cornerRadius: 16)
                    .stroke(lineWidth: 2)
                    .padding(.horizontal, 5)
                    .opacity(0.8)
                    .foregroundStyle(.blue)
                    .frame(maxWidth: .infinity)
                    .frame(height: 45)
                
                TextField("Code postal ou arrondissement", text: $searchText)
                    .italic()
                    .padding(.horizontal)
                    .onChange(of: searchText) { _, newValue in
                        Task {
                            await performSearch(query: newValue)
                        }
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

    private func performSearch(query: String) async {
        guard !query.isEmpty else {
            country = ""
            city = ""
            subLocality = ""
            errorMessage = nil
            return
        }

        let request = MKLocalSearch.Request()
        request.naturalLanguageQuery = query
        // Limiter la recherche à une région raisonnable pour améliorer la précision (ex. France par défaut)
        request.region = MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 46.603354, longitude: 1.719103), // Centre de la France
            span: MKCoordinateSpan(latitudeDelta: 10, longitudeDelta: 10)
        )

        do {
            let search = MKLocalSearch(request: request)
            let response = try await search.start()
            if let mapItem = response.mapItems.first {
                country = mapItem.placemark.country ?? "Pays inconnu"
                city = mapItem.placemark.locality ?? "Ville inconnue"
                subLocality = mapItem.placemark.subLocality ?? ""
                errorMessage = nil
            } else {
                country = ""
                city = ""
                subLocality = ""
                errorMessage = "Aucun résultat trouvé pour \"\(query)\""
            }
        } catch {
            country = ""
            city = ""
            subLocality = ""
            errorMessage = "Erreur de recherche : \(error.localizedDescription)"
        }
    }
}

#Preview {
    AddressField(searchText: .constant("13003"))
}
