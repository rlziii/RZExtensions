#if canImport(UIKit)
import UIKit

public extension NSLayoutAnchor {
    @objc func constraint(equalTo anchor: NSLayoutAnchor<AnchorType>, priority: UILayoutPriority) -> NSLayoutConstraint {
        let constraint = constraint(equalTo: anchor)
        constraint.priority = priority
        return constraint
    }

    @objc func constraint(greaterThanOrEqualTo anchor: NSLayoutAnchor<AnchorType>, priority: UILayoutPriority) -> NSLayoutConstraint {
        let constraint = constraint(greaterThanOrEqualTo: anchor)
        constraint.priority = priority
        return constraint
    }

    @objc func constraint(lessThanOrEqualTo anchor: NSLayoutAnchor<AnchorType>, priority: UILayoutPriority) -> NSLayoutConstraint {
        let constraint = constraint(lessThanOrEqualTo: anchor)
        constraint.priority = priority
        return constraint
    }

    @objc func constraint(equalTo anchor: NSLayoutAnchor<AnchorType>, constant c: CGFloat, priority: UILayoutPriority) -> NSLayoutConstraint {
        let constraint = constraint(equalTo: anchor, constant: c)
        constraint.priority = priority
        return constraint
    }

    @objc func constraint(greaterThanOrEqualTo anchor: NSLayoutAnchor<AnchorType>, constant c: CGFloat, priority: UILayoutPriority) -> NSLayoutConstraint {
        let constraint = constraint(greaterThanOrEqualTo: anchor, constant: c)
        constraint.priority = priority
        return constraint
    }

    @objc func constraint(lessThanOrEqualTo anchor: NSLayoutAnchor<AnchorType>, constant c: CGFloat, priority: UILayoutPriority) -> NSLayoutConstraint {
        let constraint = constraint(lessThanOrEqualTo: anchor, constant: c)
        constraint.priority = priority
        return constraint
    }
}

public extension NSLayoutDimension {
    func constraint(equalToConstant c: CGFloat, priority: UILayoutPriority) -> NSLayoutConstraint {
        let constraint = constraint(equalToConstant: c)
        constraint.priority = priority
        return constraint
    }

    func constraint(greaterThanOrEqualToConstant c: CGFloat, priority: UILayoutPriority) -> NSLayoutConstraint {
        let constraint = constraint(greaterThanOrEqualToConstant: c)
        constraint.priority = priority
        return constraint
    }

    func constraint(lessThanOrEqualToConstant c: CGFloat, priority: UILayoutPriority) -> NSLayoutConstraint {
        let constraint = constraint(lessThanOrEqualToConstant: c)
        constraint.priority = priority
        return constraint
    }

    func constraint(equalTo anchor: NSLayoutDimension, multiplier m: CGFloat, priority: UILayoutPriority) -> NSLayoutConstraint {
        let constraint = constraint(equalTo: anchor, multiplier: m)
        constraint.priority = priority
        return constraint
    }

    func constraint(greaterThanOrEqualTo anchor: NSLayoutDimension, multiplier m: CGFloat, priority: UILayoutPriority) -> NSLayoutConstraint {
        let constraint = constraint(greaterThanOrEqualTo: anchor, multiplier: m)
        constraint.priority = priority
        return constraint
    }

    func constraint(lessThanOrEqualTo anchor: NSLayoutDimension, multiplier m: CGFloat, priority: UILayoutPriority) -> NSLayoutConstraint {
        let constraint = constraint(lessThanOrEqualTo: anchor, multiplier: m)
        constraint.priority = priority
        return constraint
    }

    func constraint(equalTo anchor: NSLayoutDimension, multiplier m: CGFloat, constant c: CGFloat, priority: UILayoutPriority) -> NSLayoutConstraint {
        let constraint = constraint(equalTo: anchor, multiplier: m, constant: c)
        constraint.priority = priority
        return constraint
    }

    func constraint(greaterThanOrEqualTo anchor: NSLayoutDimension, multiplier m: CGFloat, constant c: CGFloat, priority: UILayoutPriority) -> NSLayoutConstraint {
        let constraint = constraint(greaterThanOrEqualTo: anchor, multiplier: m, constant: c)
        constraint.priority = priority
        return constraint
    }

    func constraint(lessThanOrEqualTo anchor: NSLayoutDimension, multiplier m: CGFloat, constant c: CGFloat, priority: UILayoutPriority) -> NSLayoutConstraint {
        let constraint = constraint(lessThanOrEqualTo: anchor, multiplier: m, constant: c)
        constraint.priority = priority
        return constraint
    }
}

public extension NSLayoutXAxisAnchor {
    func constraint(equalToSystemSpacingAfter anchor: NSLayoutXAxisAnchor, multiplier: CGFloat, priority: UILayoutPriority) -> NSLayoutConstraint {
        let constraint = constraint(equalToSystemSpacingAfter: anchor, multiplier: multiplier)
        constraint.priority = priority
        return constraint
    }

    func constraint(greaterThanOrEqualToSystemSpacingAfter anchor: NSLayoutXAxisAnchor, multiplier: CGFloat, priority: UILayoutPriority) -> NSLayoutConstraint {
        let constraint = constraint(greaterThanOrEqualToSystemSpacingAfter: anchor, multiplier: multiplier)
        constraint.priority = priority
        return constraint
    }

    func constraint(lessThanOrEqualToSystemSpacingAfter anchor: NSLayoutXAxisAnchor, multiplier: CGFloat, priority: UILayoutPriority) -> NSLayoutConstraint {
        let constraint = constraint(lessThanOrEqualToSystemSpacingAfter: anchor, multiplier: multiplier)
        constraint.priority = priority
        return constraint
    }
}

public extension NSLayoutYAxisAnchor {
    func constraint(equalToSystemSpacingBelow anchor: NSLayoutYAxisAnchor, multiplier: CGFloat, priority: UILayoutPriority) -> NSLayoutConstraint {
        let constraint = constraint(equalToSystemSpacingBelow: anchor, multiplier: multiplier)
        constraint.priority = priority
        return constraint
    }

    func constraint(greaterThanOrEqualToSystemSpacingBelow anchor: NSLayoutYAxisAnchor, multiplier: CGFloat, priority: UILayoutPriority) -> NSLayoutConstraint {
        let constraint = constraint(greaterThanOrEqualToSystemSpacingBelow: anchor, multiplier: multiplier)
        constraint.priority = priority
        return constraint
    }

    func constraint(lessThanOrEqualToSystemSpacingBelow anchor: NSLayoutYAxisAnchor, multiplier: CGFloat, priority: UILayoutPriority) -> NSLayoutConstraint {
        let constraint = constraint(lessThanOrEqualToSystemSpacingBelow: anchor, multiplier: multiplier)
        constraint.priority = priority
        return constraint
    }
}
#endif
