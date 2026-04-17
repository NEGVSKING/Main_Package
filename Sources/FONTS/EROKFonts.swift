import CoreText
import Foundation

/// Bibliothèque de fonts E-ROK.
/// Déposer un fichier .otf/.ttf dans Sources/FONTS/Resources/ (ou un sous-dossier) suffit.
/// Les fonts sont enregistrées automatiquement — aucun Info.plist requis.
public enum EROKFonts {

    // MARK: - Horizon
    public static let horizon         = "Horizon-Bold"
    public static let horizonOutlined = "Horizon-Outlined"

    // MARK: - Silkscreen (Regular + Bold)
    public static let silkscreen     = "Silkscreen-Regular"
    public static let silkscreenBold = "Silkscreen-Bold"

    // MARK: - Big Shoulders (Bold uniquement)
    public static let bigShouldersBold = "BigShoulders-Bold"

    // MARK: - Bitcount (variable)
    public static let bitcount           = "Bitcount-Regular"
    public static let bitcountGridSingle = "BitcountGridSingle-Regular"

    // MARK: - Sixtyfour (variable)
    public static let sixtyfour           = "Sixtyfour-Regular"
    public static let sixtyfourConvergence = "SixtyfourConvergence-Regular"

    // MARK: - Styles uniques
    public static let audiowide    = "Audiowide-Regular"
    public static let bebasNeue    = "BebasNeue-Regular"
    public static let bungeeShade  = "BungeeShade-Regular"
    public static let coralPixels  = "CoralPixels-Regular"
    public static let donGraffiti  = "DonGraffitiRegular"
    public static let homenaje     = "Homenaje-Regular"
    public static let monoton      = "Monoton-Regular"
    public static let nike         = "NIKE-Italic"
    public static let novaSquare   = "NovaSquare"
    public static let pressStart2P = "PressStart2P-Regular"
    public static let righteous    = "Righteous-Regular"
    public static let rubik80sFade = "Rubik80sFade-Regular"
    public static let rubikBeastly = "RubikBeastly-Regular"
    public static let yeezy        = "YEEZYTSTAR-Bold"
    public static let zenDots      = "ZenDots-Regular"

    // MARK: - IBM Plex Sans (famille complète — .bold() natif supporté)
    public enum IBMPlexSans {
        public static let regular          = "IBMPlexSans-Regular"
        public static let italic           = "IBMPlexSans-Italic"
        public static let thin             = "IBMPlexSans-Thin"
        public static let thinItalic       = "IBMPlexSans-ThinItalic"
        public static let extraLight       = "IBMPlexSans-ExtraLight"
        public static let extraLightItalic = "IBMPlexSans-ExtraLightItalic"
        public static let light            = "IBMPlexSans-Light"
        public static let lightItalic      = "IBMPlexSans-LightItalic"
        public static let medium           = "IBMPlexSans-Medium"
        public static let mediumItalic     = "IBMPlexSans-MediumItalic"
        public static let semiBold         = "IBMPlexSans-SemiBold"
        public static let semiBoldItalic   = "IBMPlexSans-SemiBoldItalic"
        public static let bold             = "IBMPlexSans-Bold"
        public static let boldItalic       = "IBMPlexSans-BoldItalic"
        // Condensed
        public static let condensedRegular    = "IBMPlexSansCondensed-Regular"
        public static let condensedBold       = "IBMPlexSansCondensed-Bold"
        public static let condensedLight      = "IBMPlexSansCondensed-Light"
        public static let condensedMedium     = "IBMPlexSansCondensed-Medium"
        public static let condensedSemiBold   = "IBMPlexSansCondensed-SemiBold"
        // SemiCondensed
        public static let semiCondensedRegular  = "IBMPlexSansSemiCondensed-Regular"
        public static let semiCondensedBold     = "IBMPlexSansSemiCondensed-Bold"
        public static let semiCondensedLight    = "IBMPlexSansSemiCondensed-Light"
        public static let semiCondensedMedium   = "IBMPlexSansSemiCondensed-Medium"
        public static let semiCondensedSemiBold = "IBMPlexSansSemiCondensed-SemiBold"
    }

    // MARK: - Epilogue (famille complète — .bold() natif supporté)
    public enum Epilogue {
        public static let regular          = "Epilogue-Regular"
        public static let italic           = "Epilogue-Italic"
        public static let thin             = "Epilogue-Thin"
        public static let thinItalic       = "Epilogue-ThinItalic"
        public static let extraLight       = "Epilogue-ExtraLight"
        public static let extraLightItalic = "Epilogue-ExtraLightItalic"
        public static let light            = "Epilogue-Light"
        public static let lightItalic      = "Epilogue-LightItalic"
        public static let medium           = "Epilogue-Medium"
        public static let mediumItalic     = "Epilogue-MediumItalic"
        public static let semiBold         = "Epilogue-SemiBold"
        public static let semiBoldItalic   = "Epilogue-SemiBoldItalic"
        public static let bold             = "Epilogue-Bold"
        public static let boldItalic       = "Epilogue-BoldItalic"
        public static let extraBold        = "Epilogue-ExtraBold"
        public static let extraBoldItalic  = "Epilogue-ExtraBoldItalic"
        public static let black            = "Epilogue-Black"
        public static let blackItalic      = "Epilogue-BlackItalic"
    }

    // MARK: - Enregistrement

    /// Enregistre toutes les fonts — sûr à appeler plusieurs fois, exécuté une seule fois.
    public static func registerAll() {
        _ = _register
    }

    private static let _register: Bool = {
        let fontExtensions: Set<String> = ["otf", "ttf"]
        guard let resourcePath = Bundle.module.resourcePath else { return false }
        let enumerator = FileManager.default.enumerator(atPath: resourcePath)
        while let file = enumerator?.nextObject() as? String {
            guard fontExtensions.contains((file as NSString).pathExtension.lowercased()) else { continue }
            let url = URL(fileURLWithPath: resourcePath).appendingPathComponent(file)
            CTFontManagerRegisterFontsForURL(url as CFURL, .process, nil)
        }
        return true
    }()
}
