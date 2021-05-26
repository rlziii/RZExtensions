import Combine

public extension Publisher {
    func mapToOptional() -> Publishers.Map<Self, Self.Output?> {
        map { Optional($0) }
    }
}
