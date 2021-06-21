import Foundation

public extension URLResponse {
    /// An `HTTPURLResponse` from a `URLResponse`.
    var httpResponse: HTTPURLResponse? {
        self as? HTTPURLResponse
    }
}
