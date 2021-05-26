import Foundation

public extension Bundle {
    var versionNumberString: String? {
        infoDictionary?["CFBundleShortVersionString"] as? String
    }
}
