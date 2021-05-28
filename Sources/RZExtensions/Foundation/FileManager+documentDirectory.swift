import Foundation

public extension FileManager {
    /// The user's local documents directory URL.
    var documentsDirectory: URL {
        guard let documentsDirectory = urls(for: .documentDirectory, in: .userDomainMask).first else {
            preconditionFailure("Could not retrieve documents directory.")
        }

        return documentsDirectory
    }
}
