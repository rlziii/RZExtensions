public extension AsyncSequence {
    /// Calls the given closure on each element in the sequence in the same order
    /// as a `for`-`await`-`in` or `for`-`try`-`await`-`in` loop.
    ///
    /// This works very similar to a regular `Sequence`'s `forEach` method.
    ///
    /// - Parameter body: A closure that takes an element of the sequence as a
    ///   parameter. This version must be `async` and can be a throwing or non-throwing closure.
    func forEach(_ body: (Element) async throws -> Void) async rethrows {
        for try await element in self {
            try await body(element)
        }
    }

    /// Calls the given closure on each element in the sequence in the same order
    /// as a `for`-`await`-`in` or `for`-`try`-`await`-`in` loop.
    ///
    /// This works very similar to a regular `Sequence`'s `forEach` method.
    ///
    /// - Parameter body: A closure that takes an element of the sequence as a
    ///   parameter. This version cannot be `async` and can be a throwing or non-throwing closure.
    func forEach(_ body: (Element) throws -> Void) async rethrows {
        for try await element in self {
            try body(element)
        }
    }
}
