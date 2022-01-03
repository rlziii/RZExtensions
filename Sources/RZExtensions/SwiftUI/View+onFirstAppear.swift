import SwiftUI

/// A `ViewModifier` that optionally executes some action if a `View` is appearing for the first time.
public struct OnFirstAppear: ViewModifier {
    @State private var isFirstAppearance = true

    public let action: (() -> Void)?

    public func body(content: Content) -> some View {
        content
            .onAppear {
                if isFirstAppearance {
                    action?()
                    isFirstAppearance = false
                }
            }
    }
}

public extension View {
    /// Adds an action to perform when this view appears **for the first time only**.
    ///
    /// - Parameter action: The action to perform. If action is nil, the call has no effect.
    /// - Returns: A view that triggers action when this view appears.
    func onFirstAppear(perform action: (() -> Void)? = nil) -> some View {
        modifier(OnFirstAppear(action: action))
    }
}
