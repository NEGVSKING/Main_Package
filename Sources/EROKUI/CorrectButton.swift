// Sources/EROKUI/CorrectButton.swift
// E-ROK-Package
//
// Created by Fabien Koré on 03/08/2025.
// Amélioré en 2026 pour supporter .tap / .longPress et des Actions asynchrones

import SwiftUI

public enum CorrectButtonInteraction {
    case tap
    case longPress
}

public struct CorrectButton: View {
    public let textColor: Color
    public let backgroundColor: Color
    public let shadowColor: Color
    public var title: String
    public let interaction: CorrectButtonInteraction
    public let action: () async throws -> Void
    
    @State private var isPressed = false
    @State private var isLoading = false
    @State private var alterState = false
    @State private var longPressTask: Task<Void, Never>? = nil
    @State private var rotation: Double = 0

    public init(
        textColor: Color = .blue,
        backgroundColor: Color = .white,
        shadowColor: Color = .gray,
        title: String = "button",
        interaction: CorrectButtonInteraction = .longPress,
        action: @escaping () async throws -> Void = {}
    ) {
        self.textColor = textColor
        self.backgroundColor = backgroundColor
        self.shadowColor = shadowColor
        self.title = title
        self.interaction = interaction
        self.action = action
    }
    
    public var body: some View {
        ZStack {
            // Effet d'expansion/succès
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
                        (isPressed ? textColor : textColor.opacity(0.8))
                )
                .opacity(isLoading ? 0 : 1)
                .overlay {
                    if isLoading && !alterState {
                        ZStack {
                            Circle()
                                .stroke(textColor.opacity(0.15), lineWidth: 2.5)
                                .frame(width: 26, height: 26)
                            Circle()
                                .trim(from: 0, to: 0.25)
                                .stroke(textColor, style: StrokeStyle(lineWidth: 2.5, lineCap: .round))
                                .frame(width: 26, height: 26)
                                .rotationEffect(.degrees(rotation))
                                .onAppear {
                                    rotation = 0
                                    withAnimation(.linear(duration: 0.85).repeatForever(autoreverses: false)) {
                                        rotation = 360
                                    }
                                }
                        }
                        .transition(.scale.combined(with: .opacity))
                    }
                }
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
                                        startPoint: isPressed ? .top : .topTrailing,
                                        endPoint: isPressed ? .bottom : .bottomLeading
                                    )
                            )
                            .padding(2)
                            .blur(radius: 3)
                            .offset(x: 3, y: 3)
                    }
                )
                .clipShape(RoundedRectangle(cornerRadius: alterState ? 60 : 12, style: .continuous))
                .shadow(color: isLoading ? textColor.opacity(0.3) : .clear, radius: 8)
                .shadow(
                    color: alterState ? .clear :
                        (isPressed ? shadowColor.opacity(0.5) : shadowColor.opacity(0.3)),
                    radius: isPressed ? 4 : 8,
                    x: isPressed ? 1 : 8,
                    y: isPressed ? 1 : 8
                )
                .scaleEffect(alterState ? 0 : (isPressed ? 0.92 : 1))
                .gesture(gesture)
                .opacity(alterState ? 0 : 0.9)
        }
        .animation(.spring(response: 0.5, dampingFraction: 0.6), value: isPressed)
        .animation(.spring(response: 0.5, dampingFraction: 0.6), value: alterState)
        .animation(.spring(response: 0.3), value: isLoading)
    }
    
    private var gesture: some Gesture {
        DragGesture(minimumDistance: 0)
            .onChanged { _ in
                guard !isLoading, !alterState else { return }
                if !isPressed {
                    isPressed = true
                    if interaction == .longPress {
                        startLongPressTask()
                    }
                }
            }
            .onEnded { _ in
                guard !isLoading, !alterState else { return }
                
                if interaction == .longPress {
                    cancelLongPressTask()
                    isPressed = false
                } else if interaction == .tap {
                    isPressed = false
                    executeAction()
                }
            }
    }
    
    private func startLongPressTask() {
        longPressTask?.cancel()
        longPressTask = Task {
            do {
                // Temps nécessaire pour déclencher l'action en restant appuyé (0.8s)
                try await Task.sleep(nanoseconds: 800_000_000)
                if Task.isCancelled { return }
                
                await MainActor.run {
                    executeAction()
                }
            } catch { }
        }
    }
    
    private func cancelLongPressTask() {
        longPressTask?.cancel()
        longPressTask = nil
    }
    
    private func executeAction() {
        guard !isLoading, !alterState else { return }
        isLoading = true
        Task {
            do {
                try await action()
                
                // Action terminée avec succès, on déclenche l'animation de succès/disparition
                withAnimation(.spring(response: 0.6, dampingFraction: 0.7)) {
                    alterState = true
                }
            } catch {
                print("CorrectButton Action failed: \(error)")
                // En cas d'erreur de l'action, on retire l'état de chargement sans disparaitre
                withAnimation {
                    isLoading = false
                    isPressed = false
                }
            }
        }
    }
}

#Preview {
    VStack(spacing: 30) {
        Text("Mode Long Press (Défaut)")
            .font(.caption)
            .foregroundStyle(.gray)
        CorrectButton(
            textColor: .black,
            backgroundColor: .white,
            shadowColor: .gray,
            title: "Hold Me",
            interaction: .longPress
        ) {
            try? await Task.sleep(nanoseconds: 1_500_000_000) // Simule validation backend
        }
        
        Text("Mode Tap Simple")
            .font(.caption)
            .foregroundStyle(.gray)
            .padding(.top, 20)
        CorrectButton(
            textColor: .blue,
            backgroundColor: .white,
            shadowColor: .gray,
            title: "Tap Me",
            interaction: .tap
        ) {
            try? await Task.sleep(nanoseconds: 1_500_000_000) // Simule validation backend
        }
    }
    .padding(40)
    .background(Color("BackgroundColor", bundle: .main))
}
