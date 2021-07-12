public extension Comparable {
    /// Clamps a comparable element within a closed range.
    ///
    /// The following examples show their results for an `Int` that should be clamped between
    /// the closed range [1, 10] (represented in Swift as `1...10`):
    ///
    ///     (-10).clamped(0...10) // returns 0
    ///     (9).clamped(0...10)   // returns 9
    ///     (100).clamped(0...10) // returns 10
    ///
    /// - Parameter range: The closed range used to limit the target element.
    /// - Returns: The clamped result.
    func clamped(to range: ClosedRange<Self>) -> Self {
        min(max(range.lowerBound, self), range.upperBound)
    }
}
