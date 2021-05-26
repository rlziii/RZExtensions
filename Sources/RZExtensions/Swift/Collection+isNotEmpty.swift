public extension Collection {
    var isNotEmpty: Bool {
        !isEmpty
    }
}

extension Optional where Wrapped: Collection {
    var isNotEmpty: Bool {
        guard let self = self else {
            return false
        }

        return self.isNotEmpty
    }
}
