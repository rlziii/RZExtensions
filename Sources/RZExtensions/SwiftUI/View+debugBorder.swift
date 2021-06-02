import SwiftUI

public extension View {
    /// Adds a colored border around views for debug purposes.
    ///
    /// - Parameter color: The color of the border. Defaults to red.
    /// - Returns: A view that adds a border with the specified color to this view.
    func debugBorder(color: Color = .red) -> some View {
        border(color)
    }
}
