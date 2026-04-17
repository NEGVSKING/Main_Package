// Sources/EROKUI/EROKFontsView.swift
// E-ROK-Package — E-ROK Fonts
//
// Created by Fabien Koré

import SwiftUI
import FONTS

// MARK: - Font Extensions
// registerAll() intégré → pas besoin d'appel manuel, fonts dispo immédiatement.

public extension Font {

    // Horizon
    static func horizon(_ size: CGFloat) -> Font {
        EROKFonts.registerAll(); return .custom(EROKFonts.horizon, size: size)
    }
    static func horizonOutlined(_ size: CGFloat) -> Font {
        EROKFonts.registerAll(); return .custom(EROKFonts.horizonOutlined, size: size)
    }

    // Silkscreen — .bold() supporté (deux fichiers, même famille)
    static func silkscreen(_ size: CGFloat, bold: Bool = false) -> Font {
        EROKFonts.registerAll()
        return .custom(bold ? EROKFonts.silkscreenBold : EROKFonts.silkscreen, size: size)
    }

    // Big Shoulders (seulement Bold disponible)
    static func bigShoulders(_ size: CGFloat) -> Font {
        EROKFonts.registerAll(); return .custom(EROKFonts.bigShouldersBold, size: size)
    }

    // IBM Plex Sans — variable font, .bold() / .italic() natifs d'Apple fonctionnent
    static func ibmPlexSans(_ size: CGFloat) -> Font {
        EROKFonts.registerAll(); return .custom(EROKFonts.ibmPlexSans, size: size)
    }
    static func ibmPlexSansItalic(_ size: CGFloat) -> Font {
        EROKFonts.registerAll(); return .custom(EROKFonts.ibmPlexSansItalic, size: size)
    }

    // Bitcount (variable)
    static func bitcount(_ size: CGFloat) -> Font {
        EROKFonts.registerAll(); return .custom(EROKFonts.bitcount, size: size)
    }
    static func bitcountGridSingle(_ size: CGFloat) -> Font {
        EROKFonts.registerAll(); return .custom(EROKFonts.bitcountGridSingle, size: size)
    }

    // Styles uniques
    static func audiowide(_ size: CGFloat) -> Font {
        EROKFonts.registerAll(); return .custom(EROKFonts.audiowide, size: size)
    }
    static func bebasNeue(_ size: CGFloat) -> Font {
        EROKFonts.registerAll(); return .custom(EROKFonts.bebasNeue, size: size)
    }
    static func rubik80sFade(_ size: CGFloat) -> Font {
        EROKFonts.registerAll(); return .custom(EROKFonts.rubik80sFade, size: size)
    }
    static func zenDots(_ size: CGFloat) -> Font {
        EROKFonts.registerAll(); return .custom(EROKFonts.zenDots, size: size)
    }
}

// MARK: - Showcase View

public struct EROKFontsView: View {

    public init() { EROKFonts.registerAll() }

    public var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 0) {
                header
                    .padding(.bottom, 32)

                fontGroup("HORIZON", note: "Outlined variant") {
                    FontRow("E-ROK FAMILY CORP", font: .horizon(28))
                    FontRow("E-ROK FAMILY CORP", font: .horizonOutlined(28))
                }

                fontGroup("SILKSCREEN", note: ".bold() via paramètre") {
                    FontRow("E-ROK Family Corp", font: .silkscreen(18))
                    FontRow("E-ROK Family Corp", font: .silkscreen(18, bold: true))
                }

                fontGroup("IBM PLEX SANS", note: "Variable — .bold() natif Apple") {
                    FontRow("E-ROK Family Corp", font: .ibmPlexSans(18))
                    FontRow("E-ROK Family Corp", font: .ibmPlexSans(18).bold())
                    FontRow("E-ROK Family Corp", font: .ibmPlexSansItalic(18))
                }

                fontGroup("BIG SHOULDERS", note: "Bold uniquement") {
                    FontRow("E-ROK FAMILY CORP", font: .bigShoulders(22))
                }

                fontGroup("BITCOUNT", note: "Variable") {
                    FontRow("E-ROK Family Corp", font: .bitcount(18))
                    FontRow("E-ROK Family Corp", font: .bitcountGridSingle(18))
                }

                fontGroup("AUDIOWIDE", note: nil) {
                    FontRow("E-ROK Family Corp", font: .audiowide(18))
                }

                fontGroup("BEBAS NEUE", note: nil) {
                    FontRow("E-ROK FAMILY CORP", font: .bebasNeue(28))
                }

                fontGroup("RUBIK 80S FADE", note: nil) {
                    FontRow("E-ROK Family Corp", font: .rubik80sFade(18))
                }

                fontGroup("ZEN DOTS", note: nil) {
                    FontRow("E-ROK Family Corp", font: .zenDots(18))
                }

                Spacer(minLength: 48)
            }
            .padding(.horizontal, 24)
        }
        .background(Color.black.ignoresSafeArea())
    }

    private var header: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text("E-ROK")
                .font(.horizon(52))
                .foregroundStyle(.white)
                .padding(.top, 24)
            Text("TYPOGRAPHY SYSTEM")
                .font(.system(size: 11, weight: .semibold, design: .monospaced))
                .foregroundStyle(.white.opacity(0.4))
                .kerning(4)
        }
    }

    private func fontGroup<Content: View>(
        _ title: String,
        note: String?,
        @ViewBuilder content: () -> Content
    ) -> some View {
        VStack(alignment: .leading, spacing: 12) {
            HStack(alignment: .firstTextBaseline, spacing: 8) {
                Text(title)
                    .font(.system(size: 10, weight: .semibold, design: .monospaced))
                    .foregroundStyle(.white.opacity(0.35))
                    .kerning(3)
                if let note {
                    Text("· \(note)")
                        .font(.system(size: 10, design: .monospaced))
                        .foregroundStyle(.white.opacity(0.2))
                }
            }
            content()
        }
        .padding(.vertical, 20)
        .overlay(alignment: .bottom) {
            Rectangle()
                .frame(height: 0.5)
                .foregroundStyle(.white.opacity(0.08))
        }
    }
}

// MARK: - Subviews

private struct FontRow: View {
    let text: String
    let font: Font

    init(_ text: String, font: Font) {
        self.text = text
        self.font = font
    }

    var body: some View {
        Text(text)
            .font(font)
            .foregroundStyle(.white)
            .lineLimit(1)
            .minimumScaleFactor(0.6)
    }
}

// MARK: - Preview

#Preview {
    EROKFontsView()
}
