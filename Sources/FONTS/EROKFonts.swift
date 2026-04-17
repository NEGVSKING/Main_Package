import CoreText
import Foundation

/// Registers custom E-ROK fonts from the FONTS bundle.
public enum EROKFonts {

    public static let horizon = "Horizon"
    public static let horizonOutlined = "Horizon-Outlined"

    /// Call once at app startup to register all custom fonts.
    public static func registerAll() {
        let names = ["horizon.otf", "horizon_outlined.otf"]
        for name in names {
            guard
                let url = Bundle.module.url(forResource: name, withExtension: nil),
                let data = try? Data(contentsOf: url),
                let provider = CGDataProvider(data: data as CFData),
                let font = CGFont(provider)
            else { continue }
            CTFontManagerRegisterGraphicsFont(font, nil)
        }
    }
}
