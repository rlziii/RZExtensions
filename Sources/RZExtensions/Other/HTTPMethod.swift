/// HTTP methods as defined by RFC 5789 and RFC 7231 (HTTP/1.1).
/// Since more custom methods are allowed, this is a struct so that it may be extended.
public struct HTTPMethod {
    public static let connect = Self("CONNECT")
    public static let delete = Self("DELETE")
    public static let get = Self("GET")
    public static let head = Self("HEAD")
    public static let options = Self("OPTIONS")
    public static let patch = Self("PATCH")
    public static let post = Self("POST")
    public static let put = Self("PUT")
    public static let trace = Self("TRACE")

    /// The uppercased name of the HTTP Method (e.g. "GET").
    public let methodName: String

    /// Creates a new `HTTPMethod`.
    /// - Parameter methodName: The HTTP method name. This will be forced to be uppercased.
    public init(_ methodName: String) {
        self.methodName = methodName.uppercased()
    }
}
