#if os(iOS)
import UIKit

public extension UIColor {
    /// Creates a `UIColor` from a hex string. The string can start with or without a "#" symbol and can include or not
    /// include a hex value for the alpha. If no alpha is supplied in the hex string, it is implied to be "ff" (i.e. 1.0).
    /// Optionally, an `alpha` argument can be passed to this initializer that will override any alpha value that is
    /// part of the hex string.
    ///
    /// - Note: Valid hex string examples:
    ///   - "#ffe700ff" Hex string including "#" and including hex alpha value
    ///   - "ffe700ff"  Hex string omitting "#" and including hex alpha value
    ///   - "#ffe700"   Hex string including "#" and omitting hex alpha value
    ///   - "ffe700"    Hex string omitting "#" and omitting hex alpha value
    ///
    /// - Parameters:
    ///   - hex: The hex string to be converted into a `UIColor`.
    ///   - alpha: An optional overriding alpha value.
    convenience init?(hex: String, overridingAlpha alpha: CGFloat? = nil) {
        let r, g, b, a: CGFloat

        let offset: String.IndexDistance = hex.hasPrefix("#") ? 1 : 0
        let start = hex.index(hex.startIndex, offsetBy: offset)
        var hexColor = String(hex[start...])

        if hexColor.count == 6 {
            hexColor.append("ff")
        }

        if hexColor.count == 8 {
            let scanner = Scanner(string: hexColor)
            var hexNumber: UInt64 = 0

            if scanner.scanHexInt64(&hexNumber) {
                r = CGFloat((hexNumber & 0xff000000) >> 24) / 255
                g = CGFloat((hexNumber & 0x00ff0000) >> 16) / 255
                b = CGFloat((hexNumber & 0x0000ff00) >> 8) / 255
                a = CGFloat(hexNumber & 0x000000ff) / 255

                self.init(red: r, green: g, blue: b, alpha: alpha ?? a)
                return
            }
        }

        return nil
    }
}
#endif
