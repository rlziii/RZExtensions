public extension Collection {
    /// Bounds-safe element access into a collection.
    ///
    /// - Returns: The element at the specified index if it exists, or nil if it is outside the bounds of the collection.
    subscript(safe index: Index) -> Element? {
        indices.contains(index) ? self[index] : nil
    }
}
