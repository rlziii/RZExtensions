#if canImport(UIKit)
import UIKit

extension UIViewController {
    /// Adds a `UIViewController` as a child view controller to this view controller.
    /// - Parameter child: The `UIViewController` to be added as a child.
    func add(_ child: UIViewController) {
        addChild(child)
        view.addSubview(child.view)
        child.didMove(toParent: self)
    }
}
#endif
