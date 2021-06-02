import SwiftUI

public extension View {
    /// Adds a colored border around views for debug purposes.
    ///
    /// - Parameters:
    ///   - color: The color of the border. Defaults to red.
    ///   - width: The width of the border. Defaults to 1.
    /// - Returns: Adds a colored border around views for debug purposes.
    func debugBorder(color: Color = .red, width: CGFloat = 1) -> some View {
        border(color, width: width)
    }
}
