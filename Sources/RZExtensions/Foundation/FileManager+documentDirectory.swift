import Foundation

public extension FileManager {
    var documentsDirectory: URL {
        guard let documentsDirectory = urls(for: .documentDirectory, in: .userDomainMask).first else {
            preconditionFailure("Could not retrieve documents directory.")
        }

        return documentsDirectory
    }
}
