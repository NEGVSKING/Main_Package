import CoreText
import Foundation

/// Manages custom E-ROK fonts from the FONTS bundle.
public enum EROKFonts {

    public static let horizon = "Horizon-Bold"
    public static let horizonOutlined = "Horizon-Outlined"

    // static let garantit une exécution unique et thread-safe (Swift)
    private static let _register: Bool = {
        let names = ["horizon.otf", "horizon_outlined.otf"]
        for name in names {
            guard let url = Bundle.module.url(forResource: name, withExtension: nil) else { continue }
            CTFontManagerRegisterFontsForURL(url as CFURL, .process, nil)
        }
        return true
    }()

    /// Enregistre les fonts — sûr à appeler plusieurs fois.
    public static func registerAll() {
        _ = _register
    }
}
