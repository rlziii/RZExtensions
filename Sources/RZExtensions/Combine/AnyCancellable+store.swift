import Combine

public extension AnyCancellable {
    public func store(in cancellable: inout Self) {
        cancellable = self
    }

    public func store(in cancellable: inout Self?) {
        cancellable = self
    }
}
