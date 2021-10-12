import Foundation

public extension Bundle {
    /// The name of the executable that identifies an application (e.g. "Some App").
    var executableNameString: String? {
        infoDictionary?["CFBundleExecutable"] as? String
    }
}
