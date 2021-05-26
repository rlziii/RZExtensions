import Combine

public extension Publisher {
    func sinkAndPrint() -> AnyCancellable {
        sink(
            receiveCompletion: { Swift.print($0) },
            receiveValue: { Swift.print($0) }
        )
    }
}
