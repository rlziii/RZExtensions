import Combine

public extension Publisher {
    /// Publishes any returned optional that has a value, removing any nil values.
    ///
    /// - Note: This is the same as performing `compactMap { $0 }` to filter out nil values.
    ///
    /// - Returns: Any non-nil optional values.
    func compact<T>() -> Publishers.CompactMap<Self, T> where Output == T? {
        compactMap { $0 }
    }
}
