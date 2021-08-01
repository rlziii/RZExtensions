import SwiftUI

public struct HiddenViewModifier: ViewModifier {
    public var isHidden: Bool

    public func body(content: Content) -> some View {
        if isHidden {
            content.hidden()
        } else {
            content
        }
    }
}

public extension View {
    func hidden(_ isHidden: Bool) -> some View {
        modifier(HiddenViewModifier(isHidden: isHidden))
    }
}
