import SwiftUI

/// A `View` that repeats its contents a specified **constant** number of times.
///
/// For example, the following will repeat `SomeView()` three times:
///
///     RepeatingView(3) {
///       SomeView()
///     }
///
/// In practice this is very similar to using a `ForEach` with a range (i.e. `Range<Int>`)
/// where the current iteration (e.g. `n`) is not necessary in the body of the `content`.
public struct RepeatingView<Content: View>: View {
    private let count: Int
    @ViewBuilder private let content: Content

    /// Creates a new `RepeatingView`.
    ///
    /// - Parameters:
    ///   - count: The number of times the content should be repeated. **This should be a constant.**
    ///   - content: The dynamic content that should be repeated.
    public init(_ count: Int, @ViewBuilder content: () -> Content) {
        self.count = count
        self.content = content()
    }

    public var body: some View {
        ForEach(0..<count, id: \.self) { _ in
            content
        }
    }
}

