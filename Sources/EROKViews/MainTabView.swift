//
// MainTabView.swift
// E-ROK-Package

import SwiftUI
import EROKUI

public struct MainTabView: View {
    public let tabs: [TabModel]
    public let views: [AnyView]
    public let textColor: Color
    public let buttonColor: Color
    
    @State private var selectedTab = 0
    @State private var isTabBarVisible = true

    public init(
        tabs: [TabModel],
        views: [AnyView],
        textColor: Color = .white,
        buttonColor: Color = .black
    ) {
        self.tabs = tabs
        self.views = views
        self.textColor = textColor
        self.buttonColor = buttonColor
    }

    public var body: some View {
        ZStack {
            GeometryReader { geo in
                HStack(spacing: 0) {
                    ForEach(0..<views.count, id: \.self) { index in
                        views[index]
                            .containerRelativeFrame(.horizontal, count: 1, spacing: 0)
                    }
                }
                .offset(x: -geo.size.width * CGFloat(selectedTab))
            }
            .ignoresSafeArea(edges: .top)
            
            // ✅ TabBar conditionnelle avec animation
            if isTabBarVisible {
                VStack {
                    Spacer()
                    TabBarView(
                        tabs: tabs,
                        selectedTab: $selectedTab,
                        textColor: textColor,
                        buttonColor: buttonColor
                    )
                    .padding(.bottom, 8)
                    .transition(.move(edge: .bottom).combined(with: .opacity))
                }
            }
        }
        .onPreferenceChange(TabBarVisibilityPreference.self) { visible in
            withAnimation(.easeInOut(duration: 0.25)) {
                isTabBarVisible = visible
            }
        }
    }
}

#Preview {
    MainTabView(
        tabs: [
            TabModel(icon: "house", title: "Home"),
            TabModel(icon: "person", title: "Profil"),
            TabModel(icon: "creditcard", title: "Wallet"),
            TabModel(icon: "gearshape", title: "Réglages")
        ],
        views: [
            AnyView(Text("Home View")),
            AnyView(Text("Profile View")),
            AnyView(Text("Wallet View")),
            AnyView(Text("Settings View"))
        ],
        textColor: .white,
        buttonColor: .black
    )
}
