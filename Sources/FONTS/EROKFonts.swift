import CoreText
import Foundation

/// Manages custom E-ROK fonts from the FONTS bundle.
public enum EROKFonts {

    public static let horizon = "Horizon-Bold"
    public static let horizonOutlined = "Horizon-Outlined"

    // static let garantit une exécution unique et thread-safe (Swift)
    // Scan dynamique : toute font ajoutée dans Sources/FONTS/ est enregistrée automatiquement
    private static let _register: Bool = {
        let extensions = ["otf", "ttf"]
        guard let resourcePath = Bundle.module.resourcePath else { return false }
        let files = (try? FileManager.default.contentsOfDirectory(atPath: resourcePath)) ?? []
        for file in files where extensions.contains((file as NSString).pathExtension.lowercased()) {
            let url = URL(fileURLWithPath: resourcePath).appendingPathComponent(file)
            CTFontManagerRegisterFontsForURL(url as CFURL, .process, nil)
        }
        return true
    }()

    /// Enregistre les fonts — sûr à appeler plusieurs fois.
    public static func registerAll() {
        _ = _register
    }
}
