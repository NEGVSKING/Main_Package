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
    
    public var body: some View {
        Button {
            guard !isDisabled && !isLoading else { return }
            Task {
                // Début de l'animation vers l'état de chargement
                withAnimation(.spring(response: 0.4, dampingFraction: 0.75)) {
                    isLoading = true
                }
                
                // Léger délai pour apprécier l'animation de morphing
                try? await Task.sleep(nanoseconds: 400_000_000)
                
                do {
                    try await action()
                } catch {
                    print("MorphingButton Request failed: \(error)")
                }
                
                // Retour à l'état initial
                withAnimation(.spring(response: 0.4, dampingFraction: 0.75)) {
                    isLoading = false
                }
            }
        } label: {
            HStack(spacing: 8) {
                if isLoading {
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle(tint: textColor))
                        .transition(.scale.combined(with: .opacity))
                } else {
                    if let symbol = symbol {
                        Image(systemName: symbol)
                            .font(.system(size: 20, weight: .medium))
                    }
                    if let title = title {
                        Text(title)
                            .font(.system(size: 18, weight: .semibold))
                            .lineLimit(1)
                    }
                }
            }
            .foregroundStyle(isDisabled ? Color.gray : textColor)
            .padding(.horizontal, isLoading ? 0 : 20)
            .frame(height: minHeight)
            .frame(minWidth: isLoading ? minHeight : minWidth)
            // L'astuce magique : On force la maxWidth à la valeur du cercle si ça charge
            .frame(maxWidth: isLoading ? minHeight : nil)
            .background(
                RoundedRectangle(cornerRadius: isLoading ? minHeight / 2 : cornerRadius)
                    .fill(isDisabled ? (disabledColor ?? Color.gray.opacity(0.7)) : backgroundColor)
                    .shadow(color: shadow ? .black.opacity(0.15) : .clear, radius: shadowRadius ?? 4, y: shadow ? 2 : 0)
            )
        }
        .buttonStyle(MorphingScaleButtonStyle())
        .disabled(isDisabled || isLoading)
        .animation(.spring(response: 0.4, dampingFraction: 0.75), value: isLoading)
    }
}

// Style de bouton premium pour l'effet de pression (Scale)
public struct MorphingScaleButtonStyle: ButtonStyle {
    public init() {}
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? 0.96 : 1.0)
            .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
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
