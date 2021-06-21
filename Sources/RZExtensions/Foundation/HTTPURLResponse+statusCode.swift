import Foundation

public extension HTTPURLResponse {
    /// Evaluates if the status code for an `HTTPURLResponse` is within the given range.
    ///
    /// - Parameter range: The range for which to check the status code.
    /// - Returns: True if the status code is within the range; false otherwise.
    func statusCode<T: RangeExpression>(is range: T) -> Bool where T.Bound == Int {
        range.contains(statusCode)
    }

    /// Evaluates if the status code for an `HTTPURLResponse` is the same as the given status code.
    ///
    /// - Parameter code: The status code to check against the response's status code.
    /// - Returns: True if the status code is the same; false otherwise.
    func statusCode(is code: Int) -> Bool {
        statusCode == code
    }
}
