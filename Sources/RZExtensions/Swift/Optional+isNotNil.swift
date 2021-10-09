public extension Optional {
    /// A property that is `true` when the `Optional` value is not `nil`; `false` otherwise.
    var isNotNil: Bool {
        self != nil
    }
}
