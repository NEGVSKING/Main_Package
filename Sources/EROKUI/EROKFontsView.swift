// Sources/EROKUI/EROKFontsView.swift
// E-ROK-Package — E-ROK Fonts
//
// Created by Fabien Koré

import SwiftUI
import FONTS

// MARK: - Font Extensions
// registerAll() est intégré → aucun appel manuel requis.

public extension Font {

    // MARK: Horizon
    static func horizon(_ size: CGFloat) -> Font {
        EROKFonts.registerAll(); return .custom(EROKFonts.horizon, size: size)
    }
    static func horizonOutlined(_ size: CGFloat) -> Font {
        EROKFonts.registerAll(); return .custom(EROKFonts.horizonOutlined, size: size)
    }

    // MARK: Silkscreen — bold via paramètre
    static func silkscreen(_ size: CGFloat, bold: Bool = false) -> Font {
        EROKFonts.registerAll()
        return .custom(bold ? EROKFonts.silkscreenBold : EROKFonts.silkscreen, size: size)
    }

    // MARK: Big Shoulders
    static func bigShoulders(_ size: CGFloat) -> Font {
        EROKFonts.registerAll(); return .custom(EROKFonts.bigShouldersBold, size: size)
    }

    // MARK: IBM Plex Sans — famille complète, .bold() natif Apple supporté
    static func ibmPlexSans(_ size: CGFloat) -> Font {
        EROKFonts.registerAll(); return .custom(EROKFonts.IBMPlexSans.regular, size: size)
    }
    static func ibmPlexSans(_ size: CGFloat, weight: Font.Weight) -> Font {
        EROKFonts.registerAll()
        let name: String
        switch weight {
        case .thin:       name = EROKFonts.IBMPlexSans.thin
        case .ultraLight: name = EROKFonts.IBMPlexSans.extraLight
        case .light:      name = EROKFonts.IBMPlexSans.light
        case .medium:     name = EROKFonts.IBMPlexSans.medium
        case .semibold:   name = EROKFonts.IBMPlexSans.semiBold
        case .bold:       name = EROKFonts.IBMPlexSans.bold
        default:          name = EROKFonts.IBMPlexSans.regular
        }
        return .custom(name, size: size)
    }
    static func ibmPlexSansCondensed(_ size: CGFloat, weight: Font.Weight = .regular) -> Font {
        EROKFonts.registerAll()
        let name: String
        switch weight {
        case .light:    name = EROKFonts.IBMPlexSans.condensedLight
        case .medium:   name = EROKFonts.IBMPlexSans.condensedMedium
        case .semibold: name = EROKFonts.IBMPlexSans.condensedSemiBold
        case .bold:     name = EROKFonts.IBMPlexSans.condensedBold
        default:        name = EROKFonts.IBMPlexSans.condensedRegular
        }
        return .custom(name, size: size)
    }
    static func ibmPlexSansSemiCondensed(_ size: CGFloat, weight: Font.Weight = .regular) -> Font {
        EROKFonts.registerAll()
        let name: String
        switch weight {
        case .light:    name = EROKFonts.IBMPlexSans.semiCondensedLight
        case .medium:   name = EROKFonts.IBMPlexSans.semiCondensedMedium
        case .semibold: name = EROKFonts.IBMPlexSans.semiCondensedSemiBold
        case .bold:     name = EROKFonts.IBMPlexSans.semiCondensedBold
        default:        name = EROKFonts.IBMPlexSans.semiCondensedRegular
        }
        return .custom(name, size: size)
    }

    // MARK: Epilogue — famille complète, .bold() natif Apple supporté
    static func epilogue(_ size: CGFloat) -> Font {
        EROKFonts.registerAll(); return .custom(EROKFonts.Epilogue.regular, size: size)
    }
    static func epilogue(_ size: CGFloat, weight: Font.Weight) -> Font {
        EROKFonts.registerAll()
        let name: String
        switch weight {
        case .thin:       name = EROKFonts.Epilogue.thin
        case .ultraLight: name = EROKFonts.Epilogue.extraLight
        case .light:      name = EROKFonts.Epilogue.light
        case .medium:     name = EROKFonts.Epilogue.medium
        case .semibold:   name = EROKFonts.Epilogue.semiBold
        case .bold:       name = EROKFonts.Epilogue.bold
        case .heavy:      name = EROKFonts.Epilogue.extraBold
        case .black:      name = EROKFonts.Epilogue.black
        default:          name = EROKFonts.Epilogue.regular
        }
        return .custom(name, size: size)
    }

    // MARK: Bitcount / Sixtyfour (variable)
    static func bitcount(_ size: CGFloat) -> Font {
        EROKFonts.registerAll(); return .custom(EROKFonts.bitcount, size: size)
    }
    static func bitcountGridSingle(_ size: CGFloat) -> Font {
        EROKFonts.registerAll(); return .custom(EROKFonts.bitcountGridSingle, size: size)
    }
    static func sixtyfour(_ size: CGFloat) -> Font {
        EROKFonts.registerAll(); return .custom(EROKFonts.sixtyfour, size: size)
    }
    static func sixtyfourConvergence(_ size: CGFloat) -> Font {
        EROKFonts.registerAll(); return .custom(EROKFonts.sixtyfourConvergence, size: size)
    }

    // MARK: Styles uniques
    static func audiowide(_ size: CGFloat) -> Font {
        EROKFonts.registerAll(); return .custom(EROKFonts.audiowide, size: size)
    }
    static func bebasNeue(_ size: CGFloat) -> Font {
        EROKFonts.registerAll(); return .custom(EROKFonts.bebasNeue, size: size)
    }
    static func bungeeShade(_ size: CGFloat) -> Font {
        EROKFonts.registerAll(); return .custom(EROKFonts.bungeeShade, size: size)
    }
    static func coralPixels(_ size: CGFloat) -> Font {
        EROKFonts.registerAll(); return .custom(EROKFonts.coralPixels, size: size)
    }
    static func donGraffiti(_ size: CGFloat) -> Font {
        EROKFonts.registerAll(); return .custom(EROKFonts.donGraffiti, size: size)
    }
    static func homenaje(_ size: CGFloat) -> Font {
        EROKFonts.registerAll(); return .custom(EROKFonts.homenaje, size: size)
    }
    static func monoton(_ size: CGFloat) -> Font {
        EROKFonts.registerAll(); return .custom(EROKFonts.monoton, size: size)
    }
    static func nike(_ size: CGFloat) -> Font {
        EROKFonts.registerAll(); return .custom(EROKFonts.nike, size: size)
    }
    static func novaSquare(_ size: CGFloat) -> Font {
        EROKFonts.registerAll(); return .custom(EROKFonts.novaSquare, size: size)
    }
    static func pressStart2P(_ size: CGFloat) -> Font {
        EROKFonts.registerAll(); return .custom(EROKFonts.pressStart2P, size: size)
    }
    static func righteous(_ size: CGFloat) -> Font {
        EROKFonts.registerAll(); return .custom(EROKFonts.righteous, size: size)
    }
    static func rubik80sFade(_ size: CGFloat) -> Font {
        EROKFonts.registerAll(); return .custom(EROKFonts.rubik80sFade, size: size)
    }
    static func rubikBeastly(_ size: CGFloat) -> Font {
        EROKFonts.registerAll(); return .custom(EROKFonts.rubikBeastly, size: size)
    }
    static func yeezy(_ size: CGFloat) -> Font {
        EROKFonts.registerAll(); return .custom(EROKFonts.yeezy, size: size)
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
                header.padding(.bottom, 32)

                group("HORIZON") {
                    row("E-ROK FAMILY CORP", .horizon(28))
                    row("E-ROK FAMILY CORP", .horizonOutlined(28))
                }
                group("SILKSCREEN", note: "bold: via paramètre") {
                    row("E-ROK Family Corp", .silkscreen(18))
                    row("E-ROK Family Corp", .silkscreen(18, bold: true))
                }
                group("IBM PLEX SANS", note: ".bold() natif — 3 largeurs") {
                    row("Regular", .ibmPlexSans(17))
                    row("Medium", .ibmPlexSans(17, weight: .medium))
                    row("Semi Bold", .ibmPlexSans(17, weight: .semibold))
                    row("Bold", .ibmPlexSans(17, weight: .bold))
                    row("Condensed Bold", .ibmPlexSansCondensed(17, weight: .bold))
                    row("SemiCondensed Light", .ibmPlexSansSemiCondensed(17, weight: .light))
                }
                group("EPILOGUE", note: ".bold() natif — 9 poids") {
                    row("ExtraLight", .epilogue(17, weight: .ultraLight))
                    row("Regular", .epilogue(17))
                    row("Medium", .epilogue(17, weight: .medium))
                    row("Bold", .epilogue(17, weight: .bold))
                    row("Black", .epilogue(17, weight: .black))
                }
                group("BITCOUNT", note: "Variable") {
                    row("E-ROK Family Corp", .bitcount(17))
                    row("E-ROK Family Corp", .bitcountGridSingle(17))
                }
                group("SIXTYFOUR", note: "Variable") {
                    row("E-ROK Family Corp", .sixtyfour(17))
                    row("E-ROK Family Corp", .sixtyfourConvergence(17))
                }
                group("BIG SHOULDERS") { row("E-ROK FAMILY CORP", .bigShoulders(22)) }
                group("BEBAS NEUE")     { row("E-ROK FAMILY CORP", .bebasNeue(26)) }
                group("AUDIOWIDE")      { row("E-ROK Family Corp", .audiowide(17)) }
                group("BUNGEE SHADE")   { row("E-ROK Family Corp", .bungeeShade(17)) }
                group("CORAL PIXELS")   { row("E-ROK Family Corp", .coralPixels(17)) }
                group("DON GRAFFITI")   { row("E-ROK Family Corp", .donGraffiti(22)) }
                group("HOMENAJE")       { row("E-ROK FAMILY CORP", .homenaje(22)) }
                group("MONOTON")        { row("E-ROK", .monoton(22)) }
                group("NIKE")           { row("E-ROK FAMILY CORP", .nike(22)) }
                group("NOVA SQUARE")    { row("E-ROK Family Corp", .novaSquare(17)) }
                group("PRESS START 2P") { row("E-ROK", .pressStart2P(14)) }
                group("RIGHTEOUS")      { row("E-ROK Family Corp", .righteous(20)) }
                group("RUBIK 80S FADE") { row("E-ROK Family Corp", .rubik80sFade(17)) }
                group("RUBIK BEASTLY")  { row("E-ROK Family Corp", .rubikBeastly(17)) }
                group("YEEZY")          { row("E-ROK FAMILY CORP", .yeezy(22)) }
                group("ZEN DOTS")       { row("E-ROK Family Corp", .zenDots(17)) }

                Spacer(minLength: 48)
            }
            .padding(.horizontal, 24)
        }
        .background(Color.black.ignoresSafeArea())
    }

    private var header: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text("E-ROK").font(.horizon(52)).foregroundStyle(.white).padding(.top, 24)
            Text("TYPOGRAPHY SYSTEM")
                .font(.system(size: 10, weight: .semibold, design: .monospaced))
                .foregroundStyle(.white.opacity(0.35))
                .kerning(4)
        }
    }

    private func group<C: View>(_ title: String, note: String? = nil, @ViewBuilder _ content: () -> C) -> some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack(spacing: 6) {
                Text(title)
                    .font(.system(size: 9, weight: .semibold, design: .monospaced))
                    .foregroundStyle(.white.opacity(0.3))
                    .kerning(3)
                if let note {
                    Text("· \(note)")
                        .font(.system(size: 9, design: .monospaced))
                        .foregroundStyle(.white.opacity(0.18))
                }
            }
            content()
        }
        .padding(.vertical, 18)
        .overlay(alignment: .bottom) {
            Rectangle().frame(height: 0.5).foregroundStyle(.white.opacity(0.07))
        }
    }

    private func row(_ text: String, _ font: Font) -> some View {
        Text(text).font(font).foregroundStyle(.white).lineLimit(1).minimumScaleFactor(0.5)
    }
}

// MARK: - Preview

#Preview { EROKFontsView() }
