import Foundation

public extension URLRequest {
    /// Set the HTTP method based on a `HTTPMethod` versus a raw `String` value.
    ///
    /// - Parameter httpMethod: The `HTTPMethod` to set for the `URLRequest`.
    mutating func setHTTPMethod(_ httpMethod: HTTPMethod) {
        self.httpMethod = httpMethod.methodName
    }
}
