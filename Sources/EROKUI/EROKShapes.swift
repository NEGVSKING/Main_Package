//
//  EROKShapes.swift
//  SHIFT.
//
//  Created by Fabien Koré on 05/10/2025.
//

import SwiftUI

public struct EROKShapes: View {
    public var body: some View {  // Public pour accès total en SPM
        Image(systemName: "person.fill")
            .resizable()
            .frame(width: 140, height: 120)
            .aspectRatio(contentMode: .fill, )
            .clipShape(StarShape())  // Init accessible maintenant
            .shadow(color: .black.opacity(0.5), radius: 8) // Ombre ajoutée
            .overlay(
                StarShape()  // Second init public
                    .stroke(
                        LinearGradient(
                            colors:
                                [.green, .purple, .green, .green],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        ),
                        lineWidth: 6
                    )
                    .shadow(color: .red.opacity(0.7), radius: 10)
            )
    }
}
// Forme d'étoile personnalisée
public struct StarShape: Shape {
    public func path(in rect: CGRect) -> Path {  // Public pour protocol conformance en SPM
        var path = Path()
        let center = CGPoint(x: rect.midX, y: rect.midY)
        let radius = min(rect.width, rect.height) / 1.5
        let points = 5
        let angle = CGFloat.pi / CGFloat(points)
        
        for i in 0..<points * 2 {
            let isPoint = i % 2 == 0
            let r = isPoint ? radius : radius * 0.5
            let a = CGFloat(i) * angle - .pi / 2
            let point = CGPoint(
                x: center.x + r * cos(a),
                y: center.y + r * sin(a)
            )
            if i == 0 {
                path.move(to: point)
            } else {
                path.addLine(to: point)
            }
        }
        path.closeSubpath()
        return path
    }
}

#Preview {
    EROKShapes()
}
