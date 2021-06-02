import SwiftUI

/// A wrapper that allows a `View` with a `@Binding` to be wrapped for interactive use in the Xcode Canvas (i.e. previews).
/// Generic over a concrete `View` type and the `@Binding`'s type.
///
/// Example usage:
/// ```
/// struct SomeView_Previews: PreviewProvider {
///   static var previews: some View {
///     BindablePreviewWrapper(initialValue: 0.0) { position in
///       SomeView(position: position)
///     }
///   }
/// }
/// ```
public struct BindablePreviewWrapper<Content: View, T>: View {
    @State public var initialValue: T
    @ViewBuilder public let content: (Binding<T>) -> Content

    public var body: some View {
        content($initialValue)
    }
}
