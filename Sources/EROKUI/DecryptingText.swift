//
//  DecryptingStyle.swift
//  E-ROK-Package
//
//  Created by Fabien Koré on 03/08/2025.
//


// Sources/EROKUI/DecryptingText.swift
// E-ROK-Package
//
// Created by Fabien Koré on 03/08/2025.

import SwiftUI

public enum DecryptingStyle {
    case slow
    case normal
    case fast
}

public struct DecryptingText: View {
    public let text: String
    public let fontSize: CGFloat
    public let alignment: Alignment
    public let lineLimit: Int?
    public let minimumScaleFactor: CGFloat
    public let style: DecryptingStyle
    public let textColor: Color
    @State private var displayedText: [String]
    
    public init(
        text: String,
        fontSize: CGFloat = 24,
        alignment: Alignment = .center,
        lineLimit: Int? = nil,
        minimumScaleFactor: CGFloat = 0.8,
        style: DecryptingStyle = .normal,
        textColor: Color = .white
    ) {
        self.text = text
        self.fontSize = fontSize
        self.alignment = alignment
        self.lineLimit = lineLimit
        self.minimumScaleFactor = minimumScaleFactor
        self.style = style
        self.textColor = textColor
        self._displayedText = State(initialValue: Array(repeating: " ", count: text.count))
    }
    
    public var body: some View {
        Text(displayedText.joined())
            .font(.system(size: fontSize, weight: .regular, design: .monospaced))
            .kerning(fontSize * 0.01)
            .foregroundStyle(textColor)
            .frame(maxWidth: .infinity, alignment: alignment)
            .lineLimit(lineLimit)
            .minimumScaleFactor(minimumScaleFactor)
            .onAppear {
                startDecrypting()
            }
    }
    
    private func startDecrypting() {
        let characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()"
        let characterDelay: CGFloat
        let iterationCount: Int
        let iterationDelay: CGFloat
        let finalDelay: CGFloat
        
        switch style {
        case .slow:
            characterDelay = 0.1
            iterationCount = 5
            iterationDelay = 0.04
            finalDelay = 0.24
        case .normal:
            characterDelay = 0.08
            iterationCount = 5
            iterationDelay = 0.04
            finalDelay = 0.24
        case .fast:
            characterDelay = 0.02
            iterationCount = 3
            iterationDelay = 0.03
            finalDelay = 0.12
        }
        
        for i in 0..<text.count {
            for j in 0..<iterationCount {
                let randomChar = characters.randomElement()!
                DispatchQueue.main.asyncAfter(deadline: .now() + Double(i) * characterDelay + Double(j) * iterationDelay) {
                    withAnimation(.easeInOut(duration: 0.1)) {
                        displayedText[i] = String(randomChar)
                    }
                }
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + Double(i) * characterDelay + Double(iterationCount) * iterationDelay + finalDelay) {
                withAnimation(.easeInOut(duration: 0.1)) {
                    displayedText[i] = String(text[text.index(text.startIndex, offsetBy: i)])
                }
            }
        }
    }
}

#Preview {
    VStack(spacing: 16) {
        DecryptingText(text: "Entrée VIP longue description", fontSize: 12, alignment: .leading, lineLimit: 3, minimumScaleFactor: 0.8, style: .slow, textColor: .black)
        DecryptingText(text: "Entrée VIP longue description", fontSize: 16, alignment: .center, lineLimit: 2, minimumScaleFactor: 0.8, style: .normal, textColor: .black)
        DecryptingText(text: "Entrée VIP longue description", fontSize: 20, alignment: .leading, lineLimit: 3, minimumScaleFactor: 0.8, style: .fast, textColor: .blue)
        DecryptingText(text: "Entrée VIP longue description", fontSize: 24, alignment: .center, lineLimit: 2, minimumScaleFactor: 0.8, textColor: .white)
    }
    .padding(16)
}
