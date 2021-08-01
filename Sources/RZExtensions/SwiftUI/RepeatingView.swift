import SwiftUI

/// A `View` that repeats its contents a specified number of times.
///
/// For example, the following will repeat `SomeView()` three times:
///
///     RepeatingView(3) {
///       SomeView()
///     }
public struct RepeatingView<Content: View>: View {
    private let count: Int
    @ViewBuilder private let content: Content

    /// Creates a new `RepeatingView`.
    ///
    /// - Parameters:
    ///   - count: A number of times the content should be repeated.
    ///   - content: The contents that should be repeated.
    public init(_ count: Int, @ViewBuilder content: () -> Content) {
        self.count = count
        self.content = content()
    }

    public var body: some View {
        ForEach(0..<count) { _ in
            content
        }
    }
}

