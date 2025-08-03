// Sources/EROKUI/AnimatedText.swift
// E-ROK-Package
//
// Created by Fabien Koré on 11/06/2025.

import SwiftUI

public enum AnimSpeed {
    case slow
    case fast
    
    public var response: Double {
        switch self {
        case .slow: return 0.8
        case .fast: return 0.3
        }
    }
    
    public var delayFactor: Double {
        switch self {
        case .slow: return 0.15
        case .fast: return 0.05
        }
    }
}

public struct AnimatedText: View {
    public let text: String
    public let fontSize: CGFloat
    public let animSpeed: AnimSpeed
    public let alignment: Alignment
    public let textColor: Color
    
    @State private var isAnimating = false
    
    public init(
        text: String,
        fontSize: CGFloat = 24,
        animSpeed: AnimSpeed = .fast,
        alignment: Alignment = .center,
        textColor: Color = .white
    ) {
        self.text = text
        self.fontSize = fontSize
        self.animSpeed = animSpeed
        self.alignment = alignment
        self.textColor = textColor
    }
    
    public var body: some View {
        HStack(spacing: 0) {
            if alignment == .leading || alignment == .trailing {
                Spacer(minLength: 0)
            }
            
            ForEach(Array(text.enumerated()), id: \.offset) { index, character in
                Text(String(character))
                    .font(.system(size: fontSize, weight: .regular))
                    .foregroundStyle(textColor)
                    .opacity(isAnimating ? 1 : 0)
                    .offset(y: isAnimating ? 0 : 20)
                    .animation(
                        .spring(response: animSpeed.response, dampingFraction: 0.7).delay(Double(index) * animSpeed.delayFactor),
                        value: isAnimating
                    )
            }
            
            if alignment == .leading || alignment == .center {
                Spacer(minLength: 0)
            }
        }
        .frame(maxWidth: .infinity, alignment: alignment)
        .padding()
        .onAppear {
            isAnimating = true
        }
    }
}

#Preview {
    VStack(spacing: 16) {
        AnimatedText(text: "Koré Fabien", fontSize: 24, animSpeed: .fast, alignment: .center, textColor: .green)
        AnimatedText(text: "Koré Fabien", fontSize: 20, animSpeed: .slow, alignment: .leading, textColor: .black)
        AnimatedText(text: "Koré Fabien", fontSize: 16, animSpeed: .fast, alignment: .trailing, textColor: .yellow)
    }
    .padding()
}
