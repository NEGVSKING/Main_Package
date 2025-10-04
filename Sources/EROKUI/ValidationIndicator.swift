// Sources/EROKUI/ValidationIndicator.swift
// E-ROK-Package
//
// Created by Fabien Koré on 04/10/2025.

import SwiftUI

public struct ValidationIndicator: View {
    let isValid: Bool
    let label: String

    public init(isValid: Bool, label: String) {
        self.isValid = isValid
        self.label = label
    }

    public var body: some View {
        HStack(spacing: 8) {
            Image(systemName: isValid ? "checkmark.circle.fill" : "xmark.circle.fill")
                .foregroundStyle(isValid ? Color.green : Color.red)
                .font(.system(size: 16))
            Text(label)
                .font(.system(size: 14))
                .foregroundStyle(.primary)
        }
        .padding(.leading, 12)
    }
}

#Preview {
    VStack(spacing: 8) {
        ValidationIndicator(isValid: true, label: "Email valide")
        ValidationIndicator(isValid: false, label: "Contient une majuscule")
    }
    .padding(16)
}
