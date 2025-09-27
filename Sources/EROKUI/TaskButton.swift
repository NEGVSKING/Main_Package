// Sources/EROKUI/TaskButton.swift
// E-ROK-Package
//
// Created by Fabien Koré on 27/09/2025.

import SwiftUI

/// A button with a loading state for asynchronous tasks, designed for E-ROK iOS applications.
public struct TaskButton: View {
    /// The title displayed on the button
    public let title: String
    /// The asynchronous task executed when the button is tapped
    public let task: () async -> Void
    /// Callback triggered when the loading state changes
    public let onStatusChange: (Bool) -> Void
    /// Text color for the button title
    public let textColor: Color
    /// Background color for the button
    public let backgroundColor: Color

    @State private var isLoading: Bool = false

    /// Initializes a TaskButton with customizable properties
    /// - Parameters:
    ///   - title: The text displayed on the button
    ///   - task: The asynchronous action to perform when tapped
    ///   - onStatusChange: Callback for loading state changes (default: no-op)
    ///   - textColor: Color of the button's text (default: .primary)
    ///   - backgroundColor: Background color of the button (default: .blue)
    public init(
        title: String,
        task: @escaping () async -> Void,
        onStatusChange: @escaping (Bool) -> Void = { _ in },
        textColor: Color = .white,
        backgroundColor: Color = .black
    ) {
        self.title = title
        self.task = task
        self.onStatusChange = onStatusChange
        self.textColor = textColor
        self.backgroundColor = backgroundColor
    }

    public var body: some View {
        Button {
            Task {
                isLoading = true
                await task()
                try? await Task.sleep(nanoseconds: 100_000_000) // 0.1s delay
                isLoading = false
            }
        } label: {
            Text(title)
                .font(.callout)
                .fontWeight(.semibold)
                .foregroundStyle(textColor)
                .opacity(isLoading ? 0 : 1)
                .overlay {
                    ProgressView()
                        .opacity(isLoading ? 1 : 0)
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 8)
        }
        .tint(backgroundColor)
        .buttonStyle(.borderedProminent)
        .buttonBorderShape(.capsule)
        .animation(.easeInOut(duration: 0.25), value: isLoading)
        .disabled(isLoading)
        .onChange(of: isLoading) { _, newValue in
            withAnimation(.easeInOut(duration: 0.25)) {
                onStatusChange(newValue)
            }
        }
    }
}

#Preview {
    VStack(spacing: 20) {
        TaskButton(
            title: "Valider",
            task: {
                try? await Task.sleep(nanoseconds: 2_000_000_000) // Simulate 2s task
            },
            onStatusChange: { isLoading in
                print("Loading state changed: \(isLoading)")
            },
            textColor: .white,
            backgroundColor: .blue
        )
        TaskButton(
            title: "Soumettre Achat",
            task: {
                try? await Task.sleep(nanoseconds: 1_000_000_000) // Simulate 1s task
            },
            onStatusChange: { isLoading in
                print("Loading state changed: \(isLoading)")
            },
            textColor: .black,
            backgroundColor: .yellow
        )
    }
    .padding()
}
