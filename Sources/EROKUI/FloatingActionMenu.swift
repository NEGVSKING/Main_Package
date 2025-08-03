//
//  Direction.swift
//  E-ROK-Package
//
//  Created by Fabien Koré on 03/08/2025.
//


// Sources/EROKUI/FloatingActionMenu.swift
// E-ROK-Package
//
// Created by Fabien Koré on 10/06/2025.

import SwiftUI

public enum Direction {
    case left
    case right
    case up
    case down
}

public struct FloatingActionMenu: View {
    public struct ButtonItem: Identifiable {
        public let id = UUID()
        public let symbol: String
        public let action: () -> Void
        
        public init(symbol: String, action: @escaping () -> Void) {
            self.symbol = symbol
            self.action = action
        }
    }
    
    public let mainButton: ButtonItem
    public let secondaryButtons: [ButtonItem]
    public let direction: Direction
    public let mainButtonSize: CGFloat?
    public let secondaryButtonSize: CGFloat?
    public let capsuleHeight: CGFloat?
    public let buttonColor: Color?
    public let textColor: Color?
    public let iconSizeRatio: CGFloat?
    public let expandedMainIcon: String?
    
    @State private var isOpen = false
    
    public init(
        mainButton: ButtonItem,
        secondaryButtons: [ButtonItem],
        direction: Direction,
        mainButtonSize: CGFloat? = 50,
        secondaryButtonSize: CGFloat? = nil,
        capsuleHeight: CGFloat? = 50,
        buttonColor: Color? = .purple,
        textColor: Color? = .white,
        iconSizeRatio: CGFloat? = 0.5,
        expandedMainIcon: String? = nil
    ) {
        self.mainButton = mainButton
        self.secondaryButtons = secondaryButtons
        self.direction = direction
        self.mainButtonSize = mainButtonSize
        self.secondaryButtonSize = secondaryButtonSize
        self.capsuleHeight = capsuleHeight
        self.buttonColor = buttonColor
        self.textColor = textColor
        self.iconSizeRatio = iconSizeRatio
        self.expandedMainIcon = expandedMainIcon
    }
    
    private var resolvedMainButtonSize: CGFloat { mainButtonSize ?? 50 }
    private var resolvedSecondaryButtonSize: CGFloat { secondaryButtonSize ?? resolvedMainButtonSize }
    private var resolvedCapsuleHeight: CGFloat { capsuleHeight ?? 50 }
    private var resolvedIconSizeRatio: CGFloat { iconSizeRatio ?? 0.5 }
    
    private var mainIconSize: CGFloat { max(resolvedMainButtonSize * resolvedIconSizeRatio, 10) }
    private var secondaryIconSize: CGFloat { max(resolvedSecondaryButtonSize * resolvedIconSizeRatio, 10) }
    
    public var body: some View {
        Group {
            switch direction {
            case .left:
                horizontalMenu(isMainFirst: true)
            case .right:
                horizontalMenu(isMainFirst: false)
            case .up:
                verticalMenu(isMainFirst: true)
            case .down:
                verticalMenu(isMainFirst: false)
            }
        }
        .padding(8)
        .background(.ultraThinMaterial)
        .clipShape(Capsule())
    }
    
    @ViewBuilder
    private func horizontalMenu(isMainFirst: Bool) -> some View {
        HStack(spacing: 8) {
            if isMainFirst {
                mainButtonView()
                if isOpen {
                    ForEach(secondaryButtons) { button in
                        secondaryButtonView(button: button)
                    }
                }
            } else {
                if isOpen {
                    ForEach(secondaryButtons) { button in
                        secondaryButtonView(button: button)
                    }
                }
                mainButtonView()
            }
        }
    }
    
    @ViewBuilder
    private func verticalMenu(isMainFirst: Bool) -> some View {
        VStack(spacing: 8) {
            if isMainFirst {
                mainButtonView()
                if isOpen {
                    ForEach(secondaryButtons) { button in
                        secondaryButtonView(button: button)
                    }
                }
            } else {
                if isOpen {
                    ForEach(secondaryButtons) { button in
                        secondaryButtonView(button: button)
                    }
                }
                mainButtonView()
            }
        }
    }
    
    @ViewBuilder
    private func mainButtonView() -> some View {
        Button(action: {
            withAnimation(.spring(response: 0.5, dampingFraction: 0.7)) {
                isOpen.toggle()
            }
            mainButton.action()
        }) {
            Image(systemName: isOpen && expandedMainIcon != nil ? expandedMainIcon! : mainButton.symbol)
                .font(.system(size: mainIconSize))
                .foregroundStyle(textColor ?? .white)
                .rotationEffect(.degrees(isOpen ? 360 : 0))
                .animation(.spring(response: 0.5, dampingFraction: 0.7), value: isOpen)
                .transition(.opacity)
        }
        .frame(width: resolvedMainButtonSize, height: resolvedMainButtonSize)
        .background(buttonColor ?? .purple)
        .clipShape(Circle())
    }
    
    @ViewBuilder
    private func secondaryButtonView(button: ButtonItem) -> some View {
        Button(action: button.action) {
            Image(systemName: button.symbol)
                .font(.system(size: secondaryIconSize))
                .foregroundStyle(textColor ?? .white)
                .rotationEffect(.degrees(isOpen ? 360 : 0))
                .animation(.spring(response: 0.5, dampingFraction: 0.7), value: isOpen)
        }
        .frame(width: resolvedSecondaryButtonSize, height: resolvedSecondaryButtonSize)
        .background(buttonColor ?? .purple)
        .clipShape(Circle())
        .transition(.opacity)
    }
}

#Preview {
    FloatingActionMenu(
        mainButton: .init(symbol: "minus", action: {}),
        secondaryButtons: [.init(symbol: "camera", action: { print("Camera tapped") })],
        direction: .right,
        mainButtonSize: 60,
        capsuleHeight: 60,
        buttonColor: .purple,
        textColor: .white,
        iconSizeRatio: 0.44,
        expandedMainIcon: "person"
    )
    .padding()
}