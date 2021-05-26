import Combine

public extension Publisher {
    func compact() -> Publishers.CompactMap<Self, Self.Output> {
        compactMap { $0 }
    }
}
