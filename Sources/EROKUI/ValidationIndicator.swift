//
//  ValidationIndicator.swift
//  E-ROK-Package
//
//  Created by Fabien Koré on 04/10/2025.
//

import SwiftUI

struct ValidationIndicator: View {
    let isValid: Bool
    let label: String
    
    var body: some View {
        HStack(spacing: 8) {
            Image(systemName: isValid ? "checkmark.circle.fill" : "xmark.circle.fill")
                .foregroundStyle(isValid ? Color.green : Color.red)
                .font(.system(size: 16)) // Multiple de 4
            Text(label)
                .font(.system(size: 14))
                .foregroundStyle(.primary) // S'adapte au mode clair/sombre
        }
        .padding(.leading, 12) // Multiple de 4
    }
}

#Preview {
    VStack(spacing: 8) {
        ValidationIndicator(isValid: true, label: "Email valide")
        ValidationIndicator(isValid: false, label: "Contient une majuscule")
    }
    .padding(16) // Multiple de 4
}
