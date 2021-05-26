import Combine

extension AnyCancellable {
    func store(in cancellable: inout Self) {
        cancellable = self
    }

    func store(in cancellable: inout Self?) {
        cancellable = self
    }
}
