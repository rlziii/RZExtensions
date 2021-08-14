public extension Optional {
    /// Attempts to unwrap an optional value and either returns the unwrapped value or, if `nil`, throws an `Error`.
    ///
    /// Example usage:
    ///
    ///     var nickname = try user.nickname?.unwrap(orThrow: Error.invalidState)
    ///
    /// - Parameter error: The error to throw if the optional cannot be unwrapped.
    /// - Throws: The specified error in case the optional cannot be unwrapped.
    /// - Returns: The unwrapped value if it exists.
    func unwrap(
        orThrow error: @autoclosure () -> Error
    ) throws -> Wrapped {
        guard let self = self else {
            throw error()
        }

        return self
    }
}
