//
//  InfoFields.swift
//  E-ROK-Package
//
//  Created by Fabien Koré on 03/08/2025.
//


// Sources/EROKViews/InfoFields.swift
// E-ROK-Package
//
// Created by Fabien Koré on 09/06/2025.

import SwiftUI
import EROKCore // Pour InformationType

public struct InfoFields: View {
    public let type: InformationType
    @Binding public var text: String
    public let textColor: Color?
    public let focusColor: Color?
    public let typedTextColor: Color?
    
    @FocusState private var isTyping: Bool
    
    public init(
        type: InformationType,
        text: Binding<String>,
        textColor: Color? = nil,
        focusColor: Color? = nil,
        typedTextColor: Color? = nil
    ) {
        self.type = type
        self._text = text
        self.textColor = textColor
        self.focusColor = focusColor
        self.typedTextColor = typedTextColor
    }
    
    public var body: some View {
        ZStack(alignment: .leading) {
            Group {
                switch type {
                case .password, .oldPassword, .confirmPassword:
                    SecureField("", text: $text)
                        .keyboardType(.default)
                        .textContentType(type.textContentType)
                case .firstName, .lastName, .phoneNumber, .streetNumber, .streetAddress, .ville, .postalCode, .pseudo, .email, .generic:
                    TextField("", text: $text)
                        .keyboardType(type.keyboardType)
                        .textContentType(type.textContentType)
                        .textInputAutocapitalization(.never)
                        .autocorrectionDisabled(true)
                }
            }
            .submitLabel(type.submitLabel)
            .padding(.horizontal, 16)
            .frame(minHeight: 56)
            .focused($isTyping)
            .foregroundStyle(typedTextColor ?? .primary)
            .background(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(isTyping ? (focusColor ?? .blue) : (textColor ?? .gray.opacity(0.8)), lineWidth: isTyping ? 2 : 1)
                    .shadow(color: isTyping ? (focusColor ?? .blue).opacity(0.25) : .clear, radius: 8, x: 0, y: 0)
            )
            
            Text(type.displayName)
                .font(.system(size: isTyping || !text.isEmpty ? 13 : 16, weight: isTyping ? .semibold : .regular))
                .padding(.horizontal, 6)
                .background(Color(uiColor: .systemBackground))
                .foregroundStyle(isTyping ? (focusColor ?? .blue) : (textColor ?? .gray))
                .padding(.leading, 12)
                .offset(y: isTyping || !text.isEmpty ? -28 : 0)
        }
        .animation(.spring(response: 0.35, dampingFraction: 0.75), value: isTyping)
        .animation(.spring(response: 0.35, dampingFraction: 0.75), value: text.isEmpty)
        .padding(.horizontal, 16)
    }
}

#Preview {
    @Previewable @State var text = ""
    return VStack(spacing: 20) {
        InfoFields(type: .pseudo, text: $text, textColor: .gray, focusColor: .blue, typedTextColor: .black)
        InfoFields(type: .email, text: $text, textColor: .gray, focusColor: .blue, typedTextColor: .black)
        InfoFields(type: .password, text: $text, textColor: .gray, focusColor: .blue, typedTextColor: .black)
        InfoFields(type: .streetNumber, text: $text, textColor: .gray, focusColor: .gray, typedTextColor: .black)
    }
    .padding()
}
