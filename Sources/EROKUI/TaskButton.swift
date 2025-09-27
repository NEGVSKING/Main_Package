// Sources/EROKUI/TaskButton.swift
// E-ROK-Package
//
// Created by Fabien Koré on 27/09/2025.

import SwiftUI

/// A customizable button with loading state for asynchronous tasks, designed for E-ROK iOS applications.
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
    /// Minimum width of the button
    public let minWidth: CGFloat
    /// Corner radius for the button's capsule shape
    public let cornerRadius: CGFloat

    @State private var isLoading: Bool = false

    /// Initializes a TaskButton with customizable properties
    /// - Parameters:
    ///   - title: The text displayed on the button
    ///   - task: The asynchronous action to perform when tapped
    ///   - onStatusChange: Callback for loading state changes (default: no-op)
    ///   - textColor: Color of the button's text (default: .white)
    ///   - backgroundColor: Background color of the button (default: .blue)
    ///   - minWidth: Minimum width of the button (default: 168)
    ///   - cornerRadius: Corner radius for the capsule shape (default: 24)
    public init(
        title: String,
        task: @escaping () async -> Void,
        onStatusChange: @escaping (Bool) -> Void = { _ in },
        textColor: Color = .white,
        backgroundColor: Color = .blue,
        minWidth: CGFloat = 168,
        cornerRadius: CGFloat = 24
    ) {
        self.title = title
        self.task = task
        self.onStatusChange = onStatusChange
        self.textColor = textColor
        self.backgroundColor = backgroundColor
        self.minWidth = minWidth
        self.cornerRadius = cornerRadius
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
            ZStack {
                Text(title)
                    .font(.callout)
                    .fontWeight(.semibold)
                    .foregroundStyle(textColor)
                    .opacity(isLoading ? 0 : 1)
                ProgressView()
                    .progressViewStyle(.circular)
                    .foregroundStyle(textColor)
                    .opacity(isLoading ? 1 : 0)
            }
            .frame(maxWidth: .infinity, minHeight: 48)
            .padding(.vertical, 8)
            .background(backgroundColor)
            .clipShape(Capsule())
        }
        .disabled(isLoading)
        .buttonStyle(.borderedProminent)
        .buttonBorderShape(.capsule)
        .animation(.easeInOut(duration: 0.25), value: isLoading)
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
            textColor: .white داشتن
            backgroundColor: .blue,
            minWidth: 168,
            cornerRadius: 24
        ) { isLoading in
            print("Loading state changed: \(isLoading)")
        }
        TaskButton(
            title: "Soumettre Achat",
            task: {
                try? await Task.sleep(nanoseconds: 1_000_000_000) // Simulate 1s task
            },
            textColor: .black,
            backgroundColor: .yellow,
            minWidth: 200,
            cornerRadius: 16
        ) { isLoading in
            print("Loading state changed: \(isLoading)")
        }
    }
    .padding()
}