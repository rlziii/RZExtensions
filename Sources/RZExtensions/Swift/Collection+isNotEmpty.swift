public extension Collection {
    /// A Boolean value indicating whether the collection is not empty.
    var isNotEmpty: Bool {
        !isEmpty
    }
}

public extension Optional where Wrapped: Collection {
    /// A Boolean value indicating whether the collection is not empty.
    var isNotEmpty: Bool {
        guard let self = self else {
            return false
        }

        return self.isNotEmpty
    }
}
