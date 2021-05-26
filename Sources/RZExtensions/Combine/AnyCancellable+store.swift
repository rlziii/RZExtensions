import Combine

public extension AnyCancellable {
    func store(in cancellable: inout AnyCancellable) {
        cancellable = self
    }

    func store(in cancellable: inout AnyCancellable?) {
        cancellable = self
    }
}
