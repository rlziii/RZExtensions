import Foundation

public extension Bundle {
    var buildNumberString: String? {
        infoDictionary?["CFBundleVersion"] as? String
    }
}
