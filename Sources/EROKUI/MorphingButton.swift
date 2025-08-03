//
//  MorphingButton.swift
//  E-ROK-Package
//
//  Created by Fabien Koré on 03/08/2025.
//


// Sources/EROKUI/MorphingButton.swift
// E-ROK-Package
//
// Created by Fabien Koré on 03/08/2025.

import SwiftUI
import UIKit

public struct MorphingButton: View {
    public let title: String?
    public let symbol: String?
    public let minWidth: CGFloat
    public let minHeight: CGFloat
    public let cornerRadius: CGFloat
    public let backgroundColor: Color
    public let textColor: Color
    public let disabledColor: Color?
    public let shadow: Bool
    public let shadowRadius: CGFloat?
    public let isDisabled: Bool
    public let action: () async throws -> Void
    
    @State private var isLoading = false
    
    public init(
        title: String? = "Appuyer",
        symbol: String? = nil,
        minWidth: CGFloat = 168,
        minHeight: CGFloat = 48,
        cornerRadius: CGFloat = 12,
        backgroundColor: Color = .blue,
        textColor: Color = .white,
        disabledColor: Color? = Color.gray.opacity(0.7),
        shadow: Bool = false,
        shadowRadius: CGFloat? = 4,
        isDisabled: Bool = false,
        action: @escaping () async throws -> Void
    ) {
        self.title = title
        self.symbol = symbol
        self.minWidth = minWidth
        self.minHeight = minHeight
        self.cornerRadius = cornerRadius
        self.backgroundColor = backgroundColor
        self.textColor = textColor
        self.disabledColor = disabledColor
        self.shadow = shadow
        self.shadowRadius = shadowRadius
        self.isDisabled = isDisabled
        self.action = action
    }
    
    // Calculer la largeur dynamique basée sur le texte
    private var dynamicWidth: CGFloat {
        guard let title = title, !isLoading else { return minHeight } // En mode chargement, utiliser minHeight pour le cercle
        
        let font = UIFont.systemFont(ofSize: 20) // Taille de la police du texte
        let attributes: [NSAttributedString.Key: Any] = [.font: font]
        let textSize = (title as NSString).size(withAttributes: attributes)
        let iconWidth = symbol != nil ? 28.0 : 0.0 // Espace pour l'icône (20 + 8 de spacing)
        let padding: CGFloat = 32 // Padding horizontal (16 de chaque côté)
        
        // Seuil de 12 caractères pour agrandir
        let calculatedWidth = textSize.width + iconWidth + padding
        return title.count < 12 ? minWidth : max(minWidth, calculatedWidth)
    }
    
    public var body: some View {
        RoundedRectangle(cornerRadius: isLoading ? minHeight / 2 : cornerRadius)
            .fill(isDisabled ? (disabledColor ?? Color.gray.opacity(0.7)) : backgroundColor)
            .frame(width: isLoading ? minHeight : dynamicWidth, height: minHeight)
            .overlay {
                if isLoading {
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle(tint: textColor))
                } else {
                    HStack(spacing: 8) {
                        if let symbol = symbol {
                            Image(systemName: symbol)
                                .font(.system(size: 20))
                                .foregroundStyle(isDisabled ? Color.gray : textColor)
                        }
                        if let title = title {
                            Text(title)
                                .font(.system(size: 20))
                                .foregroundStyle(isDisabled ? Color.gray : textColor)
                        }
                    }
                    .fixedSize()
                }
            }
            .opacity(1.0)
            .shadow(color: .black.opacity(shadow ? 0.2 : 0.0), radius: shadow ? (shadowRadius ?? 4) : 0)
            .onTapGesture {
                if !isDisabled && !isLoading {
                    print("Button tapped, isDisabled: \(isDisabled), isLoading: \(isLoading), dynamicWidth: \(dynamicWidth), minHeight: \(minHeight), backgroundColor: \(backgroundColor.description)")
                    isLoading = true
                    Task {
                        // Attendre 1 seconde pour permettre à l'animation de morphing de se compléter
                        try? await Task.sleep(nanoseconds: 1_000_000_000)
                        do {
                            try await action()
                            print("Request finished")
                        } catch {
                            print("Request failed: \(error)")
                        }
                        isLoading = false
                        print("Loading finished")
                    }
                } else {
                    print("Button tap ignored, isDisabled: \(isDisabled), isLoading: \(isLoading)")
                }
            }
            .animation(.easeInOut(duration: 1.0), value: isLoading)
            .onAppear {
                print("Button appeared, isDisabled: \(isDisabled)")
            }
    }
}

#Preview {
    VStack(spacing: 20) {
        MorphingButton(
            title: "Connexion",
            symbol: "lock.fill",
            minWidth: 168,
            backgroundColor: Color(.black),
            textColor: Color(.white),
            disabledColor: Color.gray.opacity(0.7),
            shadow: true,
            shadowRadius: 8,
            isDisabled: false,
            action: {
                try? await Task.sleep(nanoseconds: 2_000_000_000)
            }
        )
        MorphingButton(
            title: "Enregistrer",
            symbol: nil,
            minWidth: 168,
            minHeight: 56,
            cornerRadius: 16,
            backgroundColor: Color(.black),
            textColor: Color(.white),
            disabledColor: Color.gray.opacity(0.7),
            shadow: false,
            isDisabled: false,
            action: {
                try? await Task.sleep(nanoseconds: 3_000_000_000)
            }
        )
        MorphingButton(
            title: "Valider l'achat longue description",
            symbol: nil,
            minWidth: 168,
            minHeight: 56,
            cornerRadius: 16,
            backgroundColor: Color(.black),
            textColor: Color(.white),
            disabledColor: Color.gray.opacity(0.7),
            shadow: true,
            isDisabled: false,
            action: {
                try? await Task.sleep(nanoseconds: 3_000_000_000)
            }
        )
        MorphingButton(
            title: nil,
            symbol: "star.fill",
            minWidth: 168,
            backgroundColor: Color(.black),
            textColor: Color(.white),
            disabledColor: Color.gray.opacity(0.7),
            shadow: true,
            isDisabled: true,
            action: {
                try? await Task.sleep(nanoseconds: 1_000_000_000)
            }
        )
    }
    .padding()
    .background(Color("BackgroundColor"))
}
