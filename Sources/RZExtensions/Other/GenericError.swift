/// A generic `Error` to be used when a custom `Error` type isn't needed.
/// This should primarily be used for testing and other non-critical code paths.
///
/// Usage:
///
///     let error = GenericError("A nonrecoverable error occurred.")
public struct GenericError: Error {
    private let message: String

    public var localizedDescription: String { message }

    /// Creates a new `GenericError` with an optional error message.
    /// - Parameter message: An optional error message; defaults to an empty message.
    public init(_ message: String = "") {
        self.message = message
    }
}
