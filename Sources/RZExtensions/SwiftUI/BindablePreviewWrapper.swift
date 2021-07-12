import SwiftUI

/// A wrapper that allows a `View` with a `@Binding` to be wrapped for interactive use in the Xcode Canvas (i.e. previews).
/// Generic over a concrete `View` type and the `@Binding`'s type.
///
/// Example usage:
///
///     struct SomeView_Previews: PreviewProvider {
///       static var previews: some View {
///         BindablePreviewWrapper(initialValue: 0.0) { position in
///           SomeView(position: position)
///         }
///       }
///     }
public struct BindablePreviewWrapper<Content: View, T>: View {
    @State private var initialValue: T
    @ViewBuilder private let content: (Binding<T>) -> Content

    public var body: some View {
        content($initialValue)
    }

    /// Creates a new `BindablePreviewWrapper` with an initial value for the `@Binding` property.
    ///
    /// - Parameters:
    ///   - initialValue: The initial value for the `@Binding` property.
    ///   - content: The concrete `View` to be wrapped for previewing.
    public init(initialValue: T, content: @escaping (Binding<T>) -> Content) {
        self._initialValue = State(initialValue: initialValue)
        self.content = content
    }
}
