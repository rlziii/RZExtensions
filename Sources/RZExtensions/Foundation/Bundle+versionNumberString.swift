import Foundation

public extension Bundle {
    /// The release or version number of the bundle (e.g. 1.2.3).
    var versionNumberString: String? {
        infoDictionary?["CFBundleShortVersionString"] as? String
    }
}
