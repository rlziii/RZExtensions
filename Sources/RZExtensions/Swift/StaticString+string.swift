public extension StaticString {
    /// Creates a `String` from a `StaticString`.
    ///
    /// - Returns: A `String` value from the `StaticString` representation.
    func string() -> String {
        withUTF8Buffer { .init(decoding: $0, as: UTF8.self) }
    }
}
