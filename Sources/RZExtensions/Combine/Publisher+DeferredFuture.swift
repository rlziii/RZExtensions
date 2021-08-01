import Combine

/// A convenience wrapper for `Deferred { Future { ... } }`.
/// That is: a publisher that awaits subscription before running a `Future` publisher
/// that eventually produces a single value and then finishes or fails.
///
/// For example, this:
///
///     Deferred {
///       Future { promise in
///         ...
///       }
///     }
///
/// Can be simply rewritten as:
///
///     DeferredFuture { promise in
///       ...
///     }
public struct DeferredFuture<Output, Failure>: Publisher where Failure: Error {
    public typealias Promise = (Result<Output, Failure>) -> Void

    private let deferredFuture: Deferred<Future<Output, Failure>>

    /// Creates a `DeferredFuture` publisher.
    ///
    /// - Parameter attemptToFulfill: A Future.Promise that the publisher invokes when the publisher emits an element or terminates with an error.
    public init(_ attemptToFulfill: @escaping (@escaping Promise) -> Void) {
        deferredFuture = Deferred { Future(attemptToFulfill) }
    }

    /// Attaches the specified subscriber to this publisher.
    ///
    /// - Parameter subscriber: The subscriber to attach to this Publisher, after which it can receive values.
    public func receive<S>(subscriber: S) where Output == S.Input, Failure == S.Failure, S : Subscriber {
        deferredFuture.receive(subscriber: subscriber)
    }
}
