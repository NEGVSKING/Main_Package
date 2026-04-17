// Sources/EROKUI/EROKFontsView.swift
// E-ROK-Package — E-ROK Fonts
//
// Created by Fabien Koré

import SwiftUI
import FONTS

// MARK: - Font Style Helpers

public extension Font {
    static func horizon(_ size: CGFloat) -> Font {
        .custom(EROKFonts.horizon, size: size)
    }
    static func horizonOutlined(_ size: CGFloat) -> Font {
        .custom(EROKFonts.horizonOutlined, size: size)
    }
}

// MARK: - Presentation View

public struct EROKFontsView: View {

    public init() {}

    public var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 40) {

                // Header
                VStack(alignment: .leading, spacing: 6) {
                    Text("E-ROK")
                        .font(.horizon(48))
                        .foregroundStyle(.white)
                    Text("TYPOGRAPHY")
                        .font(.horizonOutlined(18))
                        .foregroundStyle(.white.opacity(0.6))
                        .kerning(6)
                }
                .padding(.top, 20)

                Divider().overlay(.white.opacity(0.15))

                // Horizon
                FontSection(
                    label: "Horizon",
                    fontName: EROKFonts.horizon,
                    accentColor: .white
                )

                Divider().overlay(.white.opacity(0.15))

                // Horizon Outlined
                FontSection(
                    label: "Horizon Outlined",
                    fontName: EROKFonts.horizonOutlined,
                    accentColor: .white.opacity(0.85)
                )

                Divider().overlay(.white.opacity(0.15))

                // Alphabet
                VStack(alignment: .leading, spacing: 16) {
                    SectionTitle("ALPHABET")

                    Text("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
                        .font(.horizon(15))
                        .foregroundStyle(.white)
                        .lineSpacing(6)

                    Text("ABCDEFGHIJKLMNOPQRSTUVWXYZ")
                        .font(.horizonOutlined(15))
                        .foregroundStyle(.white.opacity(0.7))
                        .lineSpacing(6)
                }

                Divider().overlay(.white.opacity(0.15))

                // Chiffres
                VStack(alignment: .leading, spacing: 16) {
                    SectionTitle("CHIFFRES")

                    Text("0123456789")
                        .font(.horizon(28))
                        .foregroundStyle(.white)

                    Text("0123456789")
                        .font(.horizonOutlined(28))
                        .foregroundStyle(.white.opacity(0.7))
                }

                Spacer(minLength: 40)
            }
            .padding(.horizontal, 28)
        }
        .background(Color.black.ignoresSafeArea())
        .onAppear { EROKFonts.registerAll() }
    }
}

// MARK: - Subviews

private struct FontSection: View {
    let label: String
    let fontName: String
    let accentColor: Color

    private let sizes: [CGFloat] = [40, 28, 20, 14]

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            SectionTitle(label.uppercased())

            ForEach(sizes, id: \.self) { size in
                HStack(alignment: .firstTextBaseline) {
                    Text("E-ROK")
                        .font(.custom(fontName, size: size))
                        .foregroundStyle(accentColor)
                    Spacer()
                    Text("\(Int(size))pt")
                        .font(.system(size: 11, weight: .medium, design: .monospaced))
                        .foregroundStyle(.white.opacity(0.3))
                }
            }
        }
    }
}

private struct SectionTitle: View {
    let text: String
    init(_ text: String) { self.text = text }

    var body: some View {
        Text(text)
            .font(.system(size: 10, weight: .semibold, design: .monospaced))
            .foregroundStyle(.white.opacity(0.4))
            .kerning(3)
    }
}

// MARK: - Preview

#Preview {
    EROKFontsView()
}
