public extension Optional {
    /// A property that is `true` when the `Optional` value is `nil`; `false` otherwise.
    var isNil: Bool {
        self == nil
    }
}
