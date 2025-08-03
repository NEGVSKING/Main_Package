//
//  CustomSection.swift
//  E-ROK-Package
//
//  Created by Fabien Koré on 03/08/2025.
//


// Sources/EROKUI/CustomSection.swift
// E-ROK-Package
//
// Created by Fabien Koré on 22/06/2025.

import SwiftUI

public struct CustomSection<Content: View>: View {
    public let title: String
    public let openSymbol: String
    public let closedSymbol: String
    public let backgroundColor: Color
    public let titleColor: Color
    public let symbolColor: Color
    public let cornerRadius: CGFloat
    @ViewBuilder public let content: () -> Content
    
    @State private var isExpanded: Bool = false
    
    public init(
        title: String,
        openSymbol: String = "chevron.down",
        closedSymbol: String = "chevron.right",
        backgroundColor: Color = .gray.opacity(0.8),
        titleColor: Color = .white,
        symbolColor: Color = .white,
        cornerRadius: CGFloat = 16,
        @ViewBuilder content: @escaping () -> Content
    ) {
        self.title = title
        self.openSymbol = openSymbol
        self.closedSymbol = closedSymbol
        self.backgroundColor = backgroundColor
        self.titleColor = titleColor
        self.symbolColor = symbolColor
        self.cornerRadius = cornerRadius
        self.content = content
    }
    
    public var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Button(action: {
                withAnimation(.easeInOut(duration: 0.3)) {
                    isExpanded.toggle()
                }
            }) {
                HStack {
                    DecryptingText(text: title, fontSize: 20, style: .fast, textColor: titleColor)
                        .font(.system(size: 20, weight: .bold))
                    Spacer()
                    Image(systemName: isExpanded ? openSymbol : closedSymbol)
                        .foregroundStyle(symbolColor)
                        .font(.system(size: 16))
                }
                .padding(.horizontal, 16)
                .padding(.vertical, 12)
            }
            
            if isExpanded {
                content()
                    .padding(.horizontal, 16)
                    .padding(.bottom, 12)
                    .transition(.opacity.combined(with: .scale))
            }
        }
        .background(
            RoundedRectangle(cornerRadius: cornerRadius)
                .fill(backgroundColor)
        )
        .padding(.horizontal, 16)
        .animation(.easeInOut(duration: 0.3), value: isExpanded)
    }
}

#Preview {
    CustomSection(
        title: "Section Test",
        backgroundColor: .gray.opacity(0.0),
        titleColor: .black,
        symbolColor: .black
    ) {
        VStack(alignment: .leading, spacing: 8) {
            DecryptingText(text: "Contenu de test 123", fontSize: 16, textColor: .black)
            DecryptingText(text: "Contenu de test 2", fontSize: 16, textColor: .black)
        }
    }
    .padding()
}
