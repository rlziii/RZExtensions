import Combine

public extension AnyCancellable {
    /// Stores this type-erasing cancellable instance in the specified variable.
    ///
    /// - Parameter cancellable: The variable in which to store this `AnyCancellable`.
    func store(in cancellable: inout AnyCancellable) {
        cancellable = self
    }

    /// Stores this type-erasing cancellable instance in the specified variable.
    ///
    /// - Parameter cancellable: The variable in which to store this `AnyCancellable`.
    func store(in cancellable: inout AnyCancellable?) {
        cancellable = self
    }
}
