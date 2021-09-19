import Combine
import Foundation

public extension ObservableObject {
    /// A publisher that emits **after** the object has changed.
    /// Use this instead of `objectWillChange` to get events after an object has changed.
    var objectDidChange: AnyPublisher<ObjectWillChangePublisher.Output, Never> {
        objectWillChange
            .delay(for: 0.0, scheduler: RunLoop.current)
            .eraseToAnyPublisher()
    }
}
