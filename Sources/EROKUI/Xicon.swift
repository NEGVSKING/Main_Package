//
//  Xicon.swift
//  E-ROK-Package
//
//  Created by Fabien Koré on 03/08/2025.
//


// Sources/EROKUI/Xicon.swift
// E-ROK-Package
//
// Created by Fabien Koré on 26/07/2025.

import SwiftUI

public struct Xicon: View {
    public let icon: String
    public let title: String
    public let withBgColor: Bool
    public let textColor: Color
    public let backgroundColor: Color
    public let action: () -> Void
    
    @State private var isTapped: Bool = false
    
    public init(
        icon: String,
        title: String,
        withBgColor: Bool,
        textColor: Color = .white,
        backgroundColor: Color = .blue,
        action: @escaping () -> Void
    ) {
        self.icon = icon
        self.title = title
        self.withBgColor = withBgColor
        self.textColor = textColor
        self.backgroundColor = backgroundColor
        self.action = action
    }
    
    public var body: some View {
        HStack {
            if #available(iOS 17.0, *) {
                Image(systemName: icon)
                    .foregroundStyle(withBgColor ? textColor : textColor)
                    .padding(10)
                    .symbolEffect(.bounce, value: isTapped)
                    .background(withBgColor ? backgroundColor : .clear, in: .circle)
                    .overlay {
                        Circle()
                            .stroke(lineWidth: withBgColor ? 0 : 2)
                            .foregroundStyle(withBgColor ? textColor : textColor)
                            .padding(2)
                    }
            } else {
                // Fallback on earlier versions
            }
            Text(title)
                .font(.subheadline)
                .fontWeight(.medium)
                .foregroundStyle(textColor)
        }
        .onTapGesture {
            withAnimation {
                isTapped.toggle()
                action()
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                    isTapped = false
                }
            }
        }
    }
}

#Preview {
    VStack(spacing: 16) {
        Xicon(icon: "house", title: "Home", withBgColor: true, textColor: .white, backgroundColor: .blue) {
            print("Home tapped")
        }
        Xicon(icon: "person", title: "Profil", withBgColor: false, textColor: .yellow, backgroundColor: .blue) {
            print("Profil tapped")
        }
    }
    .padding()
}
