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

    // MARK: Brocklyn
    static func brocklyn(_ size: CGFloat) -> Font {
        EROKFonts.registerAll(); return .custom(EROKFonts.Brocklyn.regular, size: size)
    }
    static func brocklynItalic(_ size: CGFloat) -> Font {
        EROKFonts.registerAll(); return .custom(EROKFonts.Brocklyn.italic, size: size)
    }
    static func brocklynExtrude(_ size: CGFloat) -> Font {
        EROKFonts.registerAll(); return .custom(EROKFonts.Brocklyn.extrude, size: size)
    }

    // MARK: Velour — poids via Font.Weight
    static func velour(_ size: CGFloat, weight: Font.Weight = .regular) -> Font {
        EROKFonts.registerAll()
        let name: String
        switch weight {
        case .thin:     name = EROKFonts.Velour.thin
        case .light:    name = EROKFonts.Velour.light
        case .medium:   name = EROKFonts.Velour.medium
        case .semibold: name = EROKFonts.Velour.semiBold
        case .bold:     name = EROKFonts.Velour.bold
        default:        name = EROKFonts.Velour.regular
        }
        return .custom(name, size: size)
    }

    // MARK: Goliathe
    static func goliathe(_ size: CGFloat) -> Font {
        EROKFonts.registerAll(); return .custom(EROKFonts.goliathe, size: size)
    }
    static func goliathItalic(_ size: CGFloat) -> Font {
        EROKFonts.registerAll(); return .custom(EROKFonts.goliathItalic, size: size)
    }

    // MARK: La Tequila
    static func laTequila(_ size: CGFloat) -> Font {
        EROKFonts.registerAll(); return .custom(EROKFonts.laTequila, size: size)
    }
    static func laTequilaOut(_ size: CGFloat) -> Font {
        EROKFonts.registerAll(); return .custom(EROKFonts.laTequilaOut, size: size)
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
    static func dstElvaqir(_ size: CGFloat) -> Font {
        EROKFonts.registerAll(); return .custom(EROKFonts.dstElvaqir, size: size)
    }
    static func gunydrops(_ size: CGFloat) -> Font {
        EROKFonts.registerAll(); return .custom(EROKFonts.gunydrops, size: size)
    }
    static func homenaje(_ size: CGFloat) -> Font {
        EROKFonts.registerAll(); return .custom(EROKFonts.homenaje, size: size)
    }
    static func lemonade(_ size: CGFloat) -> Font {
        EROKFonts.registerAll(); return .custom(EROKFonts.lemonade, size: size)
    }
    static func merhaba(_ size: CGFloat) -> Font {
        EROKFonts.registerAll(); return .custom(EROKFonts.merhaba, size: size)
    }
    static func monoslam(_ size: CGFloat) -> Font {
        EROKFonts.registerAll(); return .custom(EROKFonts.monoslam, size: size)
    }
    static func monoton(_ size: CGFloat) -> Font {
        EROKFonts.registerAll(); return .custom(EROKFonts.monoton, size: size)
    }
    static func necosmic(_ size: CGFloat) -> Font {
        EROKFonts.registerAll(); return .custom(EROKFonts.necosmic, size: size)
    }
    static func neonblitz(_ size: CGFloat) -> Font {
        EROKFonts.registerAll(); return .custom(EROKFonts.neonblitz, size: size)
    }
    static func nike(_ size: CGFloat) -> Font {
        EROKFonts.registerAll(); return .custom(EROKFonts.nike, size: size)
    }
    static func novaSquare(_ size: CGFloat) -> Font {
        EROKFonts.registerAll(); return .custom(EROKFonts.novaSquare, size: size)
    }
    static func orewa(_ size: CGFloat) -> Font {
        EROKFonts.registerAll(); return .custom(EROKFonts.orewa, size: size)
    }
    static func pressStart2P(_ size: CGFloat) -> Font {
        EROKFonts.registerAll(); return .custom(EROKFonts.pressStart2P, size: size)
    }
    static func rigero(_ size: CGFloat) -> Font {
        EROKFonts.registerAll(); return .custom(EROKFonts.rigero, size: size)
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
                group("BROCKLYN") {
                    row("E-ROK Family Corp", .brocklyn(20))
                    row("E-ROK Family Corp", .brocklynItalic(20))
                    row("E-ROK Family Corp", .brocklynExtrude(20))
                }
                group("VELOUR", note: "weight: via Font.Weight") {
                    row("Thin", .velour(17, weight: .thin))
                    row("Light", .velour(17, weight: .light))
                    row("Regular", .velour(17))
                    row("Medium", .velour(17, weight: .medium))
                    row("Semi Bold", .velour(17, weight: .semibold))
                    row("Bold", .velour(17, weight: .bold))
                }
                group("GOLIATHE") {
                    row("E-ROK Family Corp", .goliathe(20))
                    row("E-ROK Family Corp", .goliathItalic(20))
                }
                group("LA TEQUILA") {
                    row("E-ROK Family Corp", .laTequila(22))
                    row("E-ROK Family Corp", .laTequilaOut(22))
                }
                group("BIG SHOULDERS") { row("E-ROK FAMILY CORP", .bigShoulders(22)) }
                group("BEBAS NEUE")     { row("E-ROK FAMILY CORP", .bebasNeue(26)) }
                group("AUDIOWIDE")      { row("E-ROK Family Corp", .audiowide(17)) }
                group("BUNGEE SHADE")   { row("E-ROK Family Corp", .bungeeShade(17)) }
                group("CORAL PIXELS")   { row("E-ROK Family Corp", .coralPixels(17)) }
                group("DON GRAFFITI")   { row("E-ROK Family Corp", .donGraffiti(22)) }
                group("DST ELVAQIR")    { row("E-ROK FAMILY CORP", .dstElvaqir(20)) }
                group("GUNYDROPS")      { row("E-ROK Family Corp", .gunydrops(22)) }
                group("HOMENAJE")       { row("E-ROK FAMILY CORP", .homenaje(22)) }
                group("LEMONADE")       { row("E-ROK Family Corp", .lemonade(22)) }
                group("MERHABA")        { row("E-ROK Family Corp", .merhaba(22)) }
                group("MONOSLAM")       { row("E-ROK Family Corp", .monoslam(17)) }
                group("MONOTON")        { row("E-ROK", .monoton(22)) }
                group("NECOSMIC")       { row("E-ROK Family Corp", .necosmic(20)) }
                group("NEONBLITZ")      { row("E-ROK Family Corp", .neonblitz(22)) }
                group("NIKE")           { row("E-ROK FAMILY CORP", .nike(22)) }
                group("NOVA SQUARE")    { row("E-ROK Family Corp", .novaSquare(17)) }
                group("OREWA")          { row("E-ROK FAMILY CORP", .orewa(22)) }
                group("PRESS START 2P") { row("E-ROK", .pressStart2P(14)) }
                group("RIGERO")         { row("E-ROK Family Corp", .rigero(20)) }
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
