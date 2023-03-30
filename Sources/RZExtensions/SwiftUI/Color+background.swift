#if os(iOS)

import SwiftUI

public extension Color {
    /// A convenience wrapper for UIKit's `UIColor.systemBackground` to more easily be used with
    /// SwiftUI's `Color` type. Equivalent to using `Color(uiColor: UIColor.systemBackground)`.
    static let background = Self(.systemBackground)
}

#endif
