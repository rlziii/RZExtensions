public extension Task where Success == Never, Failure == Never {
    /// Suspends the current task for at least the given duration in **seconds**.
    ///
    /// If the task is canceled before the time ends, this function throws `CancellationError`.
    ///
    /// This function doesn't block the underlying thread.
    static func sleep(seconds: Double) async throws {
        try await Task.sleep(nanoseconds: UInt64(seconds * 1_000_000_000))
    }
}
