import Combine

public extension Publisher {
    /// Replaces all elements in the stream with the provided element.
    ///
    /// - Parameter output: The element to use when replacing the value(s).
    /// - Returns: A publisher that replaces all elements from the upstream publisher with the provided element.
    func replaceValue<T>(with output: T) -> Publishers.Map<Self, T> {
        map { _ in output }
    }
}
