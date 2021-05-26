#if canImport(UIKit)
import UIKit

extension UIViewController {
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
