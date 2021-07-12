#if os(iOS)
import UIKit

public extension UIView {
    /// Turns off translating a view's autoresizing mask into Auto Layout constraints.
    ///
    /// - Returns: The view itself.
    func programmatic() -> Self {
        translatesAutoresizingMaskIntoConstraints = false
        return self
    }
}
#endif
