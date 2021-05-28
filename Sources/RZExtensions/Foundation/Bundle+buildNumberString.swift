import Foundation

public extension Bundle {
    /// The version of the build that identifies an iteration of the bundle (e.g. 123).
    var buildNumberString: String? {
        infoDictionary?["CFBundleVersion"] as? String
    }
}
