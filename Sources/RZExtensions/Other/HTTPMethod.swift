/// HTTP methods as defined by RFC 5789 and RFC 7231 (HTTP/1.1).
/// Since more custom methods are allowed, this is a struct so that it may be extended.
public struct HTTPMethod {
    public static let connect = Self(rawValue: "CONNECT")
    public static let delete = Self(rawValue: "DELETE")
    public static let get = Self(rawValue: "GET")
    public static let head = Self(rawValue: "HEAD")
    public static let options = Self(rawValue: "OPTIONS")
    public static let patch = Self(rawValue: "PATCH")
    public static let post = Self(rawValue: "POST")
    public static let put = Self(rawValue: "PUT")
    public static let trace = Self(rawValue: "TRACE")

    /// The uppercased name of the HTTP Method (e.g. "GET").
    public let rawValue: String
}
