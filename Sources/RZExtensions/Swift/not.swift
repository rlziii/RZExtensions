public func not(_ expression: @autoclosure () -> Bool) -> Bool {
    !expression()
}
