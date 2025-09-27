// Sources/EROKUI/View+Extensions.swift
// E-ROK-Package
//
// Created by Fabien Koré on 27/09/2025.

import SwiftUI

/// Extension to provide iOS version checking for SwiftUI views in E-ROK applications.
public extension View {
    /// Checks if the current iOS version is 26 or higher.
    /// - Returns: `true` if the device is running iOS 26 or later, `false` otherwise.
    var isiOS26: Bool {
        if #available(iOS 26, *) {
            return true
        }
        return false
    }
}

#Preview {
    VStack(spacing: 20) {
        Text("iOS Version Check")
            .font(.headline)
        Text("Is iOS 26 or higher? \(UIDevice.current.systemVersion)")
            .foregroundStyle(.gray)
        if #available(iOS 26, *) {
            Text("Running on iOS 26+")
                .foregroundStyle(.green)
        } else {
            Text("Running on iOS < 26")
                .foregroundStyle(.red)
        }
    }
    .padding()
}
