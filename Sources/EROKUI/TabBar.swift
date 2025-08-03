// Sources/EROKUI/TabBar.swift
// E-ROK-Package
//
// Created by Fabien Koré on 03/08/2025.

import SwiftUI

public struct TabModel: Identifiable {
    public let id = UUID()
    public let icon: String
    public let title: String
    
    public init(icon: String, title: String) {
        self.icon = icon
        self.title = title
    }
}

public struct TabBarView: View {
    public let tabs: [TabModel]
    @Binding public var selectedTab: Int
    public let textColor: Color
    public let buttonColor: Color
    
    public init(
        tabs: [TabModel],
        selectedTab: Binding<Int>,
        textColor: Color = .white,
        buttonColor: Color = .blue
    ) {
        self.tabs = tabs
        self._selectedTab = selectedTab
        self.textColor = textColor
        self.buttonColor = buttonColor
    }
    
    public var body: some View {
        HStack {
            ForEach(tabs.indices, id: \.self) { index in
                HStack(spacing: 14) {
                    Image(systemName: tabs[index].icon)
                        .foregroundStyle(textColor)
                    if selectedTab == index {
                        Text(tabs[index].title)
                            .bold()
                            .foregroundStyle(textColor)
                            .transition(.scale(scale: 0, anchor: .trailing).combined(with: .opacity))
                    }
                }
                .font(.title2)
                .frame(maxWidth: selectedTab == index ? .infinity : 55)
                .frame(height: 55)
                .background(buttonColor, in: .rect(cornerRadius: 24))
                .clipped()
                .onTapGesture {
                    withAnimation {
                        selectedTab = index
                    }
                }
            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    @Previewable @State var selectedTab = 0
    let tabs = [
        TabModel(icon: "house", title: "Home"),
        TabModel(icon: "person", title: "Profil"),
        TabModel(icon: "creditcard", title: "Wallet"),
        TabModel(icon: "gearshape", title: "Réglages")
    ]
    return TabBarView(tabs: tabs, selectedTab: $selectedTab, textColor: .white, buttonColor: .blue)
        .padding()
}
