// Sources/EROKViews/MainTabView.swift
import SwiftUI
import EROKUI // Pour TabBarView et TabModel

public struct MainTabView: View {
    public let tabs: [TabModel]
    public let views: [AnyView]
    
    // ✅ Bindings pour couleurs réactives
    @Binding public var textColor: Color
    @Binding public var buttonColor: Color
    
    @State private var selectedTab = 0

    // ✅ Initializer avec Bindings
    public init(
        tabs: [TabModel],
        views: [AnyView],
        textColor: Binding<Color>,
        buttonColor: Binding<Color>
    ) {
        self.tabs = tabs
        self.views = views
        self._textColor = textColor
        self._buttonColor = buttonColor
    }
    
    // ✅ Convenience initializer pour couleurs statiques (backward compatibility)
    public init(
        tabs: [TabModel],
        views: [AnyView],
        textColor: Color = .white,
        buttonColor: Color = .black
    ) {
        self.tabs = tabs
        self.views = views
        self._textColor = .constant(textColor)
        self._buttonColor = .constant(buttonColor)
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
            .background(Color("BackgroundColor"))

            VStack {
                Spacer()
                TabBarView(tabs: tabs, selectedTab: $selectedTab, textColor: textColor, buttonColor: buttonColor)
            }
        }
    }
}

#Preview("Couleurs statiques") {
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

#Preview("Couleurs dynamiques") {
    struct DynamicPreview: View {
        @State private var textColor: Color = .white
        @State private var buttonColor: Color = .black
        
        var body: some View {
            VStack {
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
                    textColor: $textColor,
                    buttonColor: $buttonColor
                )
                
                // Boutons pour tester le changement de couleurs
                HStack(spacing: 16) {
                    Button("Blanc/Noir") {
                        withAnimation {
                            textColor = .white
                            buttonColor = .black
                        }
                    }
                    .padding()
                    .background(Color.black)
                    .foregroundColor(.white)
                    .cornerRadius(8)
                    
                    Button("Rouge/Rose") {
                        withAnimation {
                            textColor = .white
                            buttonColor = .red
                        }
                    }
                    .padding()
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(8)
                    
                    Button("Vert/Noir") {
                        withAnimation {
                            textColor = .black
                            buttonColor = .green
                        }
                    }
                    .padding()
                    .background(Color.green)
                    .foregroundColor(.black)
                    .cornerRadius(8)
                }
                .padding()
            }
        }
    }
    
    return DynamicPreview()
}
