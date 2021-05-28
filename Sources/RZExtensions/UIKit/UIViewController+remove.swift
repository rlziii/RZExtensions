#if canImport(UIKit)
import UIKit

extension UIViewController {
    /// Removes this view controller as a child from its parent view controller if it has one.
    /// If this view controller has no parent view controller, this method does nothing.
    func remove() {
        guard parent != nil else {
            return
        }

        willMove(toParent: nil)
        view.removeFromSuperview()
        removeFromParent()
    }
}
#endif
