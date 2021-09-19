import Combine

public extension Publisher {
    /// Creates a new publisher that transforms any upstream values wrapped into optional values.
    ///
    /// - Returns: A mapped stream of values wrapped as optionals.
    func mapToOptional() -> Publishers.Map<Self, Output?> {
        map { Optional($0) }
    }
}
