import SwiftUI

/// A `ViewModifier` that controls if a `View` is hidden or not conditionally.
public struct HiddenViewModifier: ViewModifier {
    public let isHidden: Bool

    public func body(content: Content) -> some View {
        content.opacity(isHidden ? 1 : 0)
    }
}

public extension View {
    /// Hides this view conditionally.
    ///
    /// - Parameter isHidden: A boolean that determines if the view should be hidden (`true`) or not (`false`).
    /// - Returns: A hidden or shown view.
    func hidden(_ isHidden: Bool) -> some View {
        modifier(HiddenViewModifier(isHidden: isHidden))
    }
}
