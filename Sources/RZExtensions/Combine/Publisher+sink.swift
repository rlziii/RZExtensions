import Combine

public extension Publisher where Output == Void, Failure == Never {
    /// A convenience version of `sink(receiveCompletion:receiveValue:)` for `<Void, Never>` Publishers that provides
    /// empty closures for completion and value observers.
    ///
    /// - Returns: A cancellable instance, which you use when you end assignment of the received value.
    ///            Deallocation of the result will tear down the subscription stream.
    func sink() -> AnyCancellable {
        sink(
            receiveCompletion: { _ in },
            receiveValue: { _ in }
        )
    }
}
