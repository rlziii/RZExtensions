public extension BinaryInteger {
    /// True if this value is an even number and false otherwise.
    var isEven: Bool {
        isMultiple(of: 2)
    }
}
