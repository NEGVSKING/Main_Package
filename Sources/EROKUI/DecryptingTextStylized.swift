//
//  DecryptingStyle.swift
//  E-ROK-Package
//
//  Created by Fabien Koré on 10/01/2026.
//


//
// DecryptingTextCustom.swift
// E-ROK-Package
//
// Created for SHIFT.beta on 10/01/2026
// Version personnalisée de DecryptingText avec choix de police

import SwiftUI


// Nouvelle vue avec police personnalisée
public struct DecryptingTextCustom: View {
    public let text: String
    public let fontName: String          // Nom de la police (ex. "Audiowide-Regular", "Silkscreen-Bold")
    public let fontSize: CGFloat
    public let alignment: Alignment
    public let lineLimit: Int?
    public let minimumScaleFactor: CGFloat
    public let style: DecryptingStyle
    public let textColor: Color
    
    @State private var displayedText: [String]
    
    public init(
        text: String,
        fontName: String,
        fontSize: CGFloat = 24,
        alignment: Alignment = .center,
        lineLimit: Int? = nil,
        minimumScaleFactor: CGFloat = 0.8,
        style: DecryptingStyle = .normal,
        textColor: Color = .white
    ) {
        self.text = text
        self.fontName = fontName
        self.fontSize = fontSize
        self.alignment = alignment
        self.lineLimit = lineLimit
        self.minimumScaleFactor = minimumScaleFactor
        self.style = style
        self.textColor = textColor
        
        // Initialisation du texte affiché avec espaces
        self._displayedText = State(initialValue: Array(repeating: " ", count: text.count))
    }
    
    public var body: some View {
        Text(displayedText.joined())
            .font(.custom(fontName, size: fontSize))
            .kerning(fontSize * 0.01) // Espacement léger pour effet décryptage
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

// Preview avec exemples
#Preview {
    VStack(spacing: 24) {
        DecryptingTextCustom(
            text: "Entrée VIP longue description",
            fontName: "Audiowide-Regular",
            fontSize: 20,
            alignment: .center,
            lineLimit: 2,
            minimumScaleFactor: 0.8,
            style: .slow,
            textColor: .white
        )
        
        DecryptingTextCustom(
            text: "Entrée VIP longue description",
            fontName: "Silkscreen-Bold",
            fontSize: 24,
            alignment: .leading,
            lineLimit: 3,
            minimumScaleFactor: 0.8,
            style: .normal,
            textColor: .cyan
        )
        
        DecryptingTextCustom(
            text: "Entrée VIP longue description",
            fontName: "ZenDots-Regular",
            fontSize: 28,
            alignment: .center,
            lineLimit: 2,
            minimumScaleFactor: 0.8,
            style: .fast,
            textColor: .yellow
        )
    }
    .padding(24)
    .background(Color.black)
}
