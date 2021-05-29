#if canImport(UIKit)
import UIKit

public extension NSLayoutAnchor {
    /// Returns a constraint that defines one item's attribute as equal to another.
    ///
    /// - Parameters:
    ///   - anchor: A layout anchor from a `UIView`, `NSView`, or `UILayoutGuide` object. You must use a subclass of `NSLayoutAnchor` that matches the current anchor. For example, if you call this method on an `NSLayoutXAxisAnchor` object, this parameter must be another `NSLayoutXAxisAnchor`.
    ///   - priority: The priority of the constraint.
    /// - Returns: An `NSLayoutConstraint` object that defines an equal relationship between the attributes represented by the two layout anchors.
    @objc func constraint(equalTo anchor: NSLayoutAnchor<AnchorType>, priority: UILayoutPriority) -> NSLayoutConstraint {
        let constraint = constraint(equalTo: anchor)
        constraint.priority = priority
        return constraint
    }

    /// Returns a constraint that defines one item's attribute as greater than or equal to another.
    ///
    /// - Parameters:
    ///   - anchor: A layout anchor from a `UIView`, `NSView`, or `UILayoutGuide` object. You must use a subclass of `NSLayoutAnchor` that matches the current anchor. For example, if you call this method on an `NSLayoutXAxisAnchor` object, this parameter must be another `NSLayoutXAxisAnchor`.
    ///   - priority: The priority of the constraint.
    /// - Returns: An `NSLayoutConstraint` object that defines the attribute represented by this layout anchor as greater than or equal to the attribute represented by the anchor parameter.
    @objc func constraint(greaterThanOrEqualTo anchor: NSLayoutAnchor<AnchorType>, priority: UILayoutPriority) -> NSLayoutConstraint {
        let constraint = constraint(greaterThanOrEqualTo: anchor)
        constraint.priority = priority
        return constraint
    }

    /// Returns a constraint that defines one item's attribute as less than or equal to another.
    ///
    /// - Parameters:
    ///   - anchor: A layout anchor from a `UIView`, `NSView`, or `UILayoutGuide` object. You must use a subclass of `NSLayoutAnchor` that matches the current anchor. For example, if you call this method on an `NSLayoutXAxisAnchor` object, this parameter must be another `NSLayoutXAxisAnchor`.
    ///   - priority: The priority of the constraint.
    /// - Returns: An `NSLayoutConstraint` object that defines the attribute represented by this layout anchor as less than or equal to the attribute represented by the anchor parameter.
    @objc func constraint(lessThanOrEqualTo anchor: NSLayoutAnchor<AnchorType>, priority: UILayoutPriority) -> NSLayoutConstraint {
        let constraint = constraint(lessThanOrEqualTo: anchor)
        constraint.priority = priority
        return constraint
    }

    /// Returns a constraint that defines one item's attribute as equal to another item's attribute plus a constant offset.
    ///
    /// - Parameters:
    ///   - anchor: A layout anchor from a `UIView`, `NSView`, or `UILayoutGuide` object. You must use a subclass of `NSLayoutAnchor` that matches the current anchor. For example, if you call this method on an `NSLayoutXAxisAnchor` object, this parameter must be another `NSLayoutXAxisAnchor`.
    ///   - c: The constant offset for the constraint.
    ///   - priority: The priority of the constraint.
    /// - Returns: An `NSLayoutConstraint` object that defines an equal relationship between the attributes represented by the two layout anchors plus a constant offset.
    @objc func constraint(equalTo anchor: NSLayoutAnchor<AnchorType>, constant c: CGFloat, priority: UILayoutPriority) -> NSLayoutConstraint {
        let constraint = constraint(equalTo: anchor, constant: c)
        constraint.priority = priority
        return constraint
    }

    /// Returns a constraint that defines one item's attribute as greater than or equal to another item's attribute plus a constant offset.
    ///
    /// - Parameters:
    ///   - anchor: A layout anchor from a `UIView`, `NSView`, or `UILayoutGuide` object. You must use a subclass of `NSLayoutAnchor` that matches the current anchor. For example, if you call this method on an `NSLayoutXAxisAnchor` object, this parameter must be another `NSLayoutXAxisAnchor`.
    ///   - c: The constant offset for the constraint.
    ///   - priority: The priority of the constraint.
    /// - Returns: An `NSLayoutConstraint` object that defines the attribute represented by this layout anchor as greater than or equal to the attribute represented by the anchor parameter plus a constant offset.
    @objc func constraint(greaterThanOrEqualTo anchor: NSLayoutAnchor<AnchorType>, constant c: CGFloat, priority: UILayoutPriority) -> NSLayoutConstraint {
        let constraint = constraint(greaterThanOrEqualTo: anchor, constant: c)
        constraint.priority = priority
        return constraint
    }

    /// Returns a constraint that defines one item's attribute as less than or equal to another item's attribute plus a constant offset.
    ///
    /// - Parameters:
    ///   - anchor: A layout anchor from a `UIView`, `NSView`, or `UILayoutGuide` object. You must use a subclass of `NSLayoutAnchor` that matches the current anchor. For example, if you call this method on an `NSLayoutXAxisAnchor` object, this parameter must be another `NSLayoutXAxisAnchor`.
    ///   - c: The constant offset for the constraint.
    ///   - priority: The priority of the constraint.
    /// - Returns: An `NSLayoutConstraint` object that defines the attribute represented by this layout anchor as less than or equal to the attribute represented by the anchor parameter plus a constant offset.
    @objc func constraint(lessThanOrEqualTo anchor: NSLayoutAnchor<AnchorType>, constant c: CGFloat, priority: UILayoutPriority) -> NSLayoutConstraint {
        let constraint = constraint(lessThanOrEqualTo: anchor, constant: c)
        constraint.priority = priority
        return constraint
    }
}

public extension NSLayoutDimension {
    /// Returns a constraint that defines a constant size for the anchor's size attribute.
    ///
    /// - Parameters:
    ///   - c: A constant representing the size of the attribute associated with this dimension anchor.
    ///   - priority: The priority of the constraint.
    /// - Returns: An `NSLayoutConstraint` object that defines a constant size for the attribute associated with this dimension anchor.
    func constraint(equalToConstant c: CGFloat, priority: UILayoutPriority) -> NSLayoutConstraint {
        let constraint = constraint(equalToConstant: c)
        constraint.priority = priority
        return constraint
    }

    /// Returns a constraint that defines the minimum size for the anchor's size attribute.
    ///
    /// - Parameters:
    ///   - c: A constant representing the minimum size of the attribute associated with this dimension anchor.
    ///   - priority: The priority of the constraint.
    /// - Returns: An `NSLayoutConstraint` object that defines a minimum size for the attribute associated with this dimension anchor.
    func constraint(greaterThanOrEqualToConstant c: CGFloat, priority: UILayoutPriority) -> NSLayoutConstraint {
        let constraint = constraint(greaterThanOrEqualToConstant: c)
        constraint.priority = priority
        return constraint
    }

    /// Returns a constraint that defines the maximum size for the anchor's size attribute.
    ///
    /// - Parameters:
    ///   - c: A constant representing the maximum size of the attribute associated with this dimension anchor.
    ///   - priority: The priority of the constraint.
    /// - Returns: An `NSLayoutConstraint` object that defines a maximum size for the attribute associated with this dimension anchor.
    func constraint(lessThanOrEqualToConstant c: CGFloat, priority: UILayoutPriority) -> NSLayoutConstraint {
        let constraint = constraint(lessThanOrEqualToConstant: c)
        constraint.priority = priority
        return constraint
    }

    /// Returns a constraint that defines the anchor's size attribute as equal to the specified anchor multiplied by the constant.
    ///
    /// - Parameters:
    ///   - anchor: A dimension anchor from a `UIView`, `NSView`, or `UILayoutGuide` object.
    ///   - m: The multiplier constant for the constraint.
    ///   - priority: The priority of the constraint.
    /// - Returns: An `NSLayoutConstraint` object that defines the attribute represented by this layout anchor as equal to the attribute represented by the anchor parameter multiplied by the `m` constant.
    func constraint(equalTo anchor: NSLayoutDimension, multiplier m: CGFloat, priority: UILayoutPriority) -> NSLayoutConstraint {
        let constraint = constraint(equalTo: anchor, multiplier: m)
        constraint.priority = priority
        return constraint
    }

    /// Returns a constraint that defines the anchor's size attribute as greater than or equal to the specified anchor multiplied by the constant.
    ///
    /// - Parameters:
    ///   - anchor: A dimension anchor from a `UIView`, `NSView`, or `UILayoutGuide` object.
    ///   - m: The multiplier constant for the constraint.
    ///   - priority: The priority of the constraint.
    /// - Returns: An `NSLayoutConstraint` object that defines the attribute represented by this layout anchor as greater than or equal to the attribute represented by the anchor parameter multiplied by the `m` constant.
    func constraint(greaterThanOrEqualTo anchor: NSLayoutDimension, multiplier m: CGFloat, priority: UILayoutPriority) -> NSLayoutConstraint {
        let constraint = constraint(greaterThanOrEqualTo: anchor, multiplier: m)
        constraint.priority = priority
        return constraint
    }

    /// Returns a constraint that defines the anchor's size attribute as less than or equal to the specified anchor multiplied by the constant.
    ///
    /// - Parameters:
    ///   - anchor: A dimension anchor from a `UIView`, `NSView`, or `UILayoutGuide` object.
    ///   - m: The multiplier constant for the constraint.
    ///   - priority: The priority of the constraint.
    /// - Returns: An `NSLayoutConstraint` object that defines the attribute represented by this layout anchor as less than or equal to the attribute represented by the anchor parameter multiplied by the `m` constant.
    func constraint(lessThanOrEqualTo anchor: NSLayoutDimension, multiplier m: CGFloat, priority: UILayoutPriority) -> NSLayoutConstraint {
        let constraint = constraint(lessThanOrEqualTo: anchor, multiplier: m)
        constraint.priority = priority
        return constraint
    }

    /// Returns a constraint that defines the anchor's size attribute as equal to the specified size attribute multiplied by a constant plus an offset.
    ///
    /// - Parameters:
    ///   - anchor: A dimension anchor from a `UIView`, `NSView`, or `UILayoutGuide` object.
    ///   - m: The multiplier constant for the constraint.
    ///   - c: The offset constant for this relationship.
    ///   - priority: The priority of the constraint.
    /// - Returns: An `NSLayoutConstraint` object that defines the attribute represented by this layout anchor as equal to the attribute represented by the anchor parameter multiplied by the `m` constant plus the constant `c`.
    func constraint(equalTo anchor: NSLayoutDimension, multiplier m: CGFloat, constant c: CGFloat, priority: UILayoutPriority) -> NSLayoutConstraint {
        let constraint = constraint(equalTo: anchor, multiplier: m, constant: c)
        constraint.priority = priority
        return constraint
    }

    /// Returns a constraint that defines the anchor's size attribute as greater than or equal to the specified anchor multiplied by the constant plus an offset.
    ///
    /// - Parameters:
    ///   - anchor: A dimension anchor from a `UIView`, `NSView`, or `UILayoutGuide` object.
    ///   - m: The multiplier constant for the constraint.
    ///   - c: The offset constant for this relationship.
    ///   - priority: The priority of the constraint.
    /// - Returns: An `NSLayoutConstraint` object that defines the attribute represented by this layout anchor as greater than or equal to the attribute represented by the anchor parameter multiplied by the `m` constant plus the constant `c`.
    func constraint(greaterThanOrEqualTo anchor: NSLayoutDimension, multiplier m: CGFloat, constant c: CGFloat, priority: UILayoutPriority) -> NSLayoutConstraint {
        let constraint = constraint(greaterThanOrEqualTo: anchor, multiplier: m, constant: c)
        constraint.priority = priority
        return constraint
    }

    /// Returns a constraint that defines the anchor's size attribute as greater than or equal to the specified anchor multiplied by the constant plus an offset.
    ///
    /// - Parameters:
    ///   - anchor: A dimension anchor from a `UIView`, `NSView`, or `UILayoutGuide` object.
    ///   - m: The multiplier constant for the constraint.
    ///   - c: The offset constant for this relationship.
    ///   - priority: The priority of the constraint.
    /// - Returns: An `NSLayoutConstraint` object that defines the attribute represented by this layout anchor as less than or equal to the attribute represented by the anchor parameter multiplied by the `m` constant plus the constant `c`.
    func constraint(lessThanOrEqualTo anchor: NSLayoutDimension, multiplier m: CGFloat, constant c: CGFloat, priority: UILayoutPriority) -> NSLayoutConstraint {
        let constraint = constraint(lessThanOrEqualTo: anchor, multiplier: m, constant: c)
        constraint.priority = priority
        return constraint
    }
}

public extension NSLayoutXAxisAnchor {
    /// Returns a constraint that defines by how much the current anchor trails the specified anchor.
    ///
    /// - Parameters:
    ///   - anchor: The anchor to use as the starting point for the constraint.
    ///   - multiplier: The multiple of the system spacing to use as the distance between the two anchors.
    ///   - priority: The priority of the constraint.
    /// - Returns: An `NSLayoutConstraint` object that imposes a specific distance between the current anchor and the object in the anchor parameter.
    func constraint(equalToSystemSpacingAfter anchor: NSLayoutXAxisAnchor, multiplier: CGFloat, priority: UILayoutPriority) -> NSLayoutConstraint {
        let constraint = constraint(equalToSystemSpacingAfter: anchor, multiplier: multiplier)
        constraint.priority = priority
        return constraint
    }

    /// Returns a constraint that defines the minimum amount by which the current anchor trails the specified anchor.
    ///
    /// - Parameters:
    ///   - anchor: The anchor to use as the starting point for the constraint.
    ///   - multiplier: The multiple of the system spacing to use as the minimum distance between the two anchors.
    ///   - priority: The priority of the constraint.
    /// - Returns: An `NSLayoutConstraint` object that imposes a minimum distance between the current anchor and the object in the anchor parameter.
    func constraint(greaterThanOrEqualToSystemSpacingAfter anchor: NSLayoutXAxisAnchor, multiplier: CGFloat, priority: UILayoutPriority) -> NSLayoutConstraint {
        let constraint = constraint(greaterThanOrEqualToSystemSpacingAfter: anchor, multiplier: multiplier)
        constraint.priority = priority
        return constraint
    }

    /// Returns a constraint that defines the maximum amount by which the current anchor trails the specified anchor.
    ///
    /// - Parameters:
    ///   - anchor: The anchor to use as the starting point for the constraint.
    ///   - multiplier: The multiple of the system spacing to use as the maximum distance between the two anchors.
    ///   - priority: The priority of the constraint.
    /// - Returns: An `NSLayoutConstraint` object that imposes a maximum distance between the current anchor and the object in the anchor parameter.
    func constraint(lessThanOrEqualToSystemSpacingAfter anchor: NSLayoutXAxisAnchor, multiplier: CGFloat, priority: UILayoutPriority) -> NSLayoutConstraint {
        let constraint = constraint(lessThanOrEqualToSystemSpacingAfter: anchor, multiplier: multiplier)
        constraint.priority = priority
        return constraint
    }
}

public extension NSLayoutYAxisAnchor {
    /// Returns a constraint that defines the specific distance at which the current anchor is positioned below the specified anchor.
    ///
    /// - Parameters:
    ///   - anchor: The anchor to use as the starting point for the constraint.
    ///   - multiplier: The multiple of the system spacing to use as the distance between the two anchors.
    ///   - priority: The priority of the constraint.
    /// - Returns: An `NSLayoutConstraint` object that imposes a specific distance between the current anchor and the object in the anchor parameter.
    func constraint(equalToSystemSpacingBelow anchor: NSLayoutYAxisAnchor, multiplier: CGFloat, priority: UILayoutPriority) -> NSLayoutConstraint {
        let constraint = constraint(equalToSystemSpacingBelow: anchor, multiplier: multiplier)
        constraint.priority = priority
        return constraint
    }

    /// Returns a constraint that defines the minimum distance by which the current anchor is positioned below the specified anchor.
    ///
    /// - Parameters:
    ///   - anchor: The anchor to use as the starting point for the constraint.
    ///   - multiplier: The multiple of the system spacing to use as the distance between the two anchors.
    ///   - priority: The priority of the constraint.
    /// - Returns: An `NSLayoutConstraint` object that imposes a minimum distance between the current anchor and the object in the anchor parameter.
    func constraint(greaterThanOrEqualToSystemSpacingBelow anchor: NSLayoutYAxisAnchor, multiplier: CGFloat, priority: UILayoutPriority) -> NSLayoutConstraint {
        let constraint = constraint(greaterThanOrEqualToSystemSpacingBelow: anchor, multiplier: multiplier)
        constraint.priority = priority
        return constraint
    }

    /// Returns a constraint that defines the maximum distance by which the current anchor is positioned below the specified anchor.
    ///
    /// - Parameters:
    ///   - anchor: The anchor to use as the starting point for the constraint.
    ///   - multiplier: The multiple of the system spacing to use as the distance between the two anchors.
    ///   - priority: The priority of the constraint.
    /// - Returns: An `NSLayoutConstraint` object that imposes a minimum distance between the current anchor and the object in the anchor parameter.
    func constraint(lessThanOrEqualToSystemSpacingBelow anchor: NSLayoutYAxisAnchor, multiplier: CGFloat, priority: UILayoutPriority) -> NSLayoutConstraint {
        let constraint = constraint(lessThanOrEqualToSystemSpacingBelow: anchor, multiplier: multiplier)
        constraint.priority = priority
        return constraint
    }
}
#endif
