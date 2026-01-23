//
//  TabBarVisibilityKey.swift
//  E-ROK-Package
//
//  Created by Fabien Koré on 10/01/2026.
//

import SwiftUI

/// Clé d'environnement pour gérer la visibilité de la TabBar personnalisée
public struct TabBarVisibilityKey: EnvironmentKey {
    // ✅ CORRECTION : Utiliser seulement nonisolated(unsafe) SANS @MainActor
    nonisolated(unsafe) public static var defaultValue: Binding<Bool> = .constant(true)
}

extension EnvironmentValues {
    public var isTabBarVisible: Binding<Bool> {
        get { self[TabBarVisibilityKey.self] }
        set { self[TabBarVisibilityKey.self] = newValue }
    }
}

/// PreferenceKey pour synchroniser la visibilité de la TabBar
public struct TabBarVisibilityPreference: PreferenceKey {
    // ✅ CORRECTION : Ajouter nonisolated(unsafe) pour éviter l'erreur de concurrence
    nonisolated(unsafe) public static var defaultValue: Bool = true
    
    public static func reduce(value: inout Bool, nextValue: () -> Bool) {
        value = nextValue()
    }
}

/// Modificateur pour cacher/afficher la TabBar
extension View {
    public func tabBarVisibility(_ isVisible: Bool) -> some View {
        preference(key: TabBarVisibilityPreference.self, value: isVisible)
    }
}
