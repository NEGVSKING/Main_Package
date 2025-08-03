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
            switch type {
            case .password, .oldPassword, .confirmPassword:
                SecureField("", text: $text)
                    .padding(.leading)
                    .frame(minHeight: 56)
                    .focused($isTyping)
                    .keyboardType(.default)
                    .textContentType(type.textContentType)
                    .submitLabel(type.submitLabel)
                    .foregroundStyle(typedTextColor ?? .black)
                    .background(
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(isTyping ? (focusColor ?? .blue) : (textColor ?? .gray), lineWidth: 2)
                    )
            case .firstName, .lastName, .phoneNumber, .streetNumber, .streetAddress, .ville, .postalCode, .pseudo, .email, .generic:
                TextField("", text: $text)
                    .padding(.leading)
                    .frame(minHeight: 56)
                    .focused($isTyping)
                    .keyboardType(type.keyboardType)
                    .textContentType(type.textContentType)
                    .submitLabel(type.submitLabel)
                    .autocapitalization(.none)
                    .disableAutocorrection(true)
                    .foregroundStyle(typedTextColor ?? .black)
                    .background(
                        RoundedRectangle(cornerRadius: 16)
                            .stroke(isTyping ? (focusColor ?? .blue) : (textColor ?? .gray), lineWidth: 2)
                    )
            }
            
            Text(type.displayName)
                .padding(.horizontal, 8)
                .background(
                    Color.white
                        .clipShape(RoundedRectangle(cornerRadius: 4))
                        .opacity(isTyping || !text.isEmpty ? 1 : 0)
                )
                .foregroundStyle(isTyping ? (focusColor ?? .blue) : (textColor ?? .gray))
                .padding(.leading)
                .offset(y: isTyping || !text.isEmpty ? -28 : 0)
        }
        .animation(.linear(duration: 0.2), value: isTyping)
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
