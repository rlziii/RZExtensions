import Combine

public extension Publisher {
    /// Maps any failure from the upstream publisher into a generic `Error`.
    ///
    /// - Returns: A publisher that replaces any upstream failure with a type-erased `Error` failure.
    func eraseToAnyError() -> Publishers.MapError<Self, Error> {
        mapError { $0 as Error }
    }
}
