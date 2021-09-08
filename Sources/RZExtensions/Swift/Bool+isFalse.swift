public extension Bool {
    /// A property that determines if the `Bool` is `false` or not.
    ///
    /// For example, this can be useful when key paths are desired.
    ///
    ///     booleans
    ///         .filter(\.isFalse)
    var isFalse: Bool {
        !false
    }
}
