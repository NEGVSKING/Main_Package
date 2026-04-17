import CoreText
import Foundation

/// Manages custom E-ROK fonts from the FONTS bundle.
/// Ajouter un fichier .otf/.ttf dans Sources/FONTS/ suffit — tout est auto-découvert.
public enum EROKFonts {

    // MARK: - Horizon
    public static let horizon         = "Horizon-Bold"
    public static let horizonOutlined = "Horizon-Outlined"

    // MARK: - Silkscreen (Regular + Bold → .bold() supporté)
    public static let silkscreen      = "Silkscreen-Regular"
    public static let silkscreenBold  = "Silkscreen-Bold"

    // MARK: - Big Shoulders (Bold uniquement)
    public static let bigShouldersBold = "BigShoulders-Bold"

    // MARK: - IBM Plex Sans (variable font → .bold() / .italic() natifs)
    public static let ibmPlexSans       = "IBMPlexSans-Regular"
    public static let ibmPlexSansItalic = "IBMPlexSans-Italic"

    // MARK: - Bitcount (variable)
    public static let bitcount           = "Bitcount-Regular"
    public static let bitcountGridSingle = "BitcountGridSingle-Regular"

    // MARK: - Styles uniques
    public static let audiowide    = "Audiowide-Regular"
    public static let bebasNeue    = "BebasNeue-Regular"
    public static let rubik80sFade = "Rubik80sFade-Regular"
    public static let zenDots      = "ZenDots-Regular"

    // MARK: - Enregistrement

    /// Enregistre toutes les fonts — sûr à appeler plusieurs fois, exécuté une seule fois.
    public static func registerAll() {
        _ = _register
    }

    // static let garantit thread-safety et exécution unique (Swift)
    // Scan récursif : fonctionne avec des sous-dossiers dans Sources/FONTS/
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
