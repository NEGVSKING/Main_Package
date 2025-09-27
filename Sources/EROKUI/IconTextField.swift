//
//  IconTextField.swift
//  E-ROK-Package
//
//  Created by Fabien Koré on 27/09/2025.
//


// Sources/EROKUI/IconTextField.swift
// E-ROK-Package
//
// Created by Fabien Koré on 27/09/2025.

import SwiftUI

/// A customizable text field with an icon and optional password visibility toggle, designed for E-ROK iOS applications.
public struct IconTextField: View {
    /// The placeholder text for the text field
    public let hint: String
    /// The SF Symbol name for the leading icon
    public let symbol: String
    /// The binding to the text value entered by the user
    @Binding public var value: String
    /// Indicates if the field is for a password (enables SecureField and toggle)
    public let isPassword: Bool
    /// Color of the icon and text
    public let textColor: Color
    /// Background color or material for the text field
    public let backgroundColor: Color

    @State private var showPassword: Bool = false

    /// Initializes an IconTextField with customizable properties
    /// - Parameters:
    ///   - hint: Placeholder text for the text field
    ///   - symbol: SF Symbol name for the leading icon
    ///   - value: Binding to the text value
    ///   - isPassword: If true, uses SecureField with a toggle for password visibility (default: false)
    ///   - textColor: Color for the icon and text (default: .gray)
    ///   - backgroundColor: Background color or material (default: .ultraThinMaterial)
    public init(
        hint: String,
        symbol: String,
        value: Binding<String>,
        isPassword: Bool = false,
        textColor: Color = .gray,
        backgroundColor: Color = .white
    ) {
        self.hint = hint
        self.symbol = symbol
        self._value = value
        self.isPassword = isPassword
        self.textColor = textColor
        self.backgroundColor = backgroundColor
    }

    public var body: some View {
        HStack(spacing: 8) {
            Image(systemName: symbol)
                .font(.callout)
                .foregroundStyle(textColor)
                .frame(width: 28)

            Group {
                if isPassword && !showPassword {
                    SecureField(hint, text: $value)
                        .foregroundStyle(textColor)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                } else {
                    TextField(hint, text: $value)
                        .foregroundStyle(textColor)
                        .autocapitalization(.none)
                        .disableAutocorrection(true)
                }
            }

            if isPassword {
                Button {
                    withAnimation(.easeInOut(duration: 0.2)) {
                        showPassword.toggle()
                    }
                } label: {
                    Image(systemName: showPassword ? "eye.slash" : "eye")
                        .font(.callout)
                        .foregroundStyle(textColor)
                        .padding(.horizontal, 8)
                }
            }
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 12)
        .background(backgroundColor)
        .clipShape(.capsule)
    }
}

#Preview {
    @Previewable @State var text = ""
    @Previewable @State var password = ""
    VStack(spacing: 20) {
        IconTextField(
            hint: "Email",
            symbol: "envelope",
            value: $text,
            isPassword: false,
            textColor: .gray,
            backgroundColor: .gray.opacity(0.2)
        )
        IconTextField(
            hint: "Mot de passe",
            symbol: "lock",
            value: $password,
            isPassword: true,
            textColor: .black,
            backgroundColor: .black.opacity(0.1)
        )
        IconTextField(
            hint: "Pseudo",
            symbol: "person",
            value: $text,
            isPassword: false,
            textColor: .blue,
            backgroundColor: .gray.opacity(0.2)
        )
    }
    .padding()
}
