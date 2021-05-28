import Combine

public extension Publisher {
    /// Creates a new publisher that turns all values into `Void`/`()`.
    ///
    /// - Returns: `Void`/`()` for every value emitted by the upstream publisher.
    func mapToVoid() -> Publishers.Map<Self, Void> {
        map { _ in () }
    }
}
