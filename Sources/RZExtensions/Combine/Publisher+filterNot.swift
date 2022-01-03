import Combine

public extension Publisher {
    /// Creates a new publisher that filters any values that do not match the given predicate.
    ///
    /// This is similar to using:
    ///
    ///     somePublisher.filter { !someCondition }
    ///
    /// This extension enables more expressive uses via Swift's keypath functionality:
    ///
    ///     ["", "Hello", "", "World"].publisher
    ///         .filterNot(\.isEmpty)
    ///         .sink { print($0, terminator: " ") }
    ///
    /// The above will produce the output: Hello World
    ///
    /// - Returns: A new publisher not containing the filtered values.
    func filterNot(_ isIncluded: @escaping (Output) -> Bool) -> Publishers.Filter<Self> {
        filter { not(isIncluded($0)) }
    }
}
