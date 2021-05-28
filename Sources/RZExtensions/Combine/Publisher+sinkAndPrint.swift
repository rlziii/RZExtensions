import Combine

public extension Publisher {
    /// A simple debugging publisher that prints out every completion and value received.
    ///
    /// - Returns: A cancellable instance, which you use when you end assignment of the received value.
    ///            Deallocation of the result will tear down the subscription stream.
    func sinkAndPrint(_ prefix: String = "") -> AnyCancellable {
        let prefix = prefix.isNotEmpty ? prefix.appending(":") : ""

        return sink(
            receiveCompletion: { Swift.print(prefix, $0) },
            receiveValue: { Swift.print(prefix, $0) }
        )
    }
}
