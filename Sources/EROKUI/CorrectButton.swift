//
//  CorrectButton.swift
//  E-ROK-Package
//
//  Created by Fabien Koré on 03/08/2025.
//


// Sources/EROKUI/CorrectButton.swift
// E-ROK-Package
//
// Created by Fabien Koré on 03/08/2025.

import SwiftUI

public struct CorrectButton: View {
    public let textColor: Color
    public let backgroundColor: Color
    public let shadowColor: Color
    public var title: String
    @State private var tap = false
    @State private var press = false
    @State private var alterState = false
    
    public init(
        textColor: Color = .blue,
        backgroundColor: Color = .white,
        shadowColor: Color = .gray,
        title: String = "button"
    ) {
        self.textColor = textColor
        self.backgroundColor = backgroundColor
        self.shadowColor = shadowColor
        self.title = title
    }
    
    public var body: some View {
        ZStack {
            Circle()
                .stroke(lineWidth: alterState ? 20 : 0)
                .frame(width: alterState ? 500 : 0, height: alterState ? 500 : 0)
                .foregroundStyle(Color.green.opacity(0.5))
                .blur(radius: alterState ? 5 : 20)
                .opacity(alterState ? 0 : 1)
            
            Text(title)
                .font(.system(size: 20, weight: .semibold, design: .monospaced))
                .foregroundStyle(
                    alterState ? Color.clear :
                        (tap ? textColor : textColor.opacity(0.8))
                )
                .frame(width: 200, height: alterState ? 200 : 60)
                .background(
                    ZStack {
                        Color.gray.opacity(0.1)
                        RoundedRectangle(cornerRadius: alterState ? 60 : 12, style: .continuous)
                            .foregroundStyle(backgroundColor)
                            .blur(radius: 3)
                            .offset(x: -2, y: -2)
                        RoundedRectangle(cornerRadius: alterState ? 60 : 12, style: .continuous)
                            .fill(
                                alterState ?
                                    LinearGradient(
                                        gradient: Gradient(colors: [Color.cyan, Color.green]),
                                        startPoint: .topLeading,
                                        endPoint: .bottomTrailing
                                    ) :
                                    LinearGradient(
                                        gradient: Gradient(colors: [backgroundColor.opacity(0.75), backgroundColor]),
                                        startPoint: tap ? .top : .topTrailing,
                                        endPoint: tap ? .bottom : .bottomLeading
                                    )
                            )
                            .padding(2)
                            .blur(radius: 3)
                            .offset(x: 3, y: 3)
                    }
                )
                .clipShape(RoundedRectangle(cornerRadius: alterState ? 60 : 12, style: .continuous))
                .shadow(color: press ? textColor : .clear, radius: 8)
                .shadow(
                    color: press ? .clear :
                        (tap ? shadowColor.opacity(0.5) : shadowColor.opacity(0.3)),
                    radius: tap ? 4 : 8,
                    x: tap ? 1 : 8,
                    y: tap ? 1 : 8
                )
                .scaleEffect(alterState ? 0 : (tap ? 0.9 : 1))
                .gesture(
                    DragGesture(minimumDistance: 0)
                        .onChanged { _ in
                            if self.press {
                                self.press = false
                            }
                            self.tap = true
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                                if self.tap {
                                    self.press = true
                                    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                                        self.alterState = true
                                    }
                                }
                            }
                        }
                        .onEnded { _ in
                            if !self.press {
                                self.tap = false
                            }
                        }
                )
                .opacity(alterState ? 0 : 0.9)
        }
        .animation(.spring(response: 0.5, dampingFraction: 0.5), value: tap)
        .animation(.spring(response: 0.5, dampingFraction: 0.5), value: press)
        .animation(.spring(response: 0.5, dampingFraction: 0.5), value: alterState)
        
    }
}



#Preview {
    VStack(spacing: 20) {
        CorrectButton(textColor: .black, backgroundColor: .white, shadowColor: .gray,title: "King")
        CorrectButton(textColor: .blue, backgroundColor: .white, shadowColor: .gray)
    }
    .padding(16)
}
