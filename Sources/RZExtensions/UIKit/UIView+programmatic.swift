#if canImport(UIKit)
import UIKit

public extension UIView {
    func programmatic() -> Self {
        translatesAutoresizingMaskIntoConstraints = false
        return self
    }
}
#endif
