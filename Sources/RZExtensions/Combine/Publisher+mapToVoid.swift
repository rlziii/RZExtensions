import Combine

public extension Publisher {
    func mapToVoid() -> AnyPublisher<Void, Failure> {
        map { _ in () }
            .eraseToAnyPublisher()
    }
}
