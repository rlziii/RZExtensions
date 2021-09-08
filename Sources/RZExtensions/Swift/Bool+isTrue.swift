public extension Bool {
    /// A property that determines if the `Bool` is `true` or not.
    ///
    /// For example, this can be useful when key paths are desired.
    ///
    ///     booleans
    ///         .filter(\.isTrue)
    var isTrue: Bool {
        self
    }
}
