public extension Optional {
    /// Attempts to unwrap an optional value and either returns the optional value or, if `nil`, causes a
    /// `preconditionFailure` to occur (effectively halting execution).
    ///
    /// Example usages:
    ///
    ///     // Without a message.
    ///     var nickname = user.nickname?.require()
    ///
    ///     // With a message.
    ///     var nickname = user.nickname?.require(message: "Nickname cannot be optional.")
    ///
    /// - Parameters:
    ///   - messageExpression: An optional message to be displayed as part of the failure message during a crash.
    ///   - file: The file of the calling function; this should generally be left alone so the default value can be used.
    ///   - line: The line of the calling function; this should generally be left alone so the default value can be used.
    /// - Returns: The unwrapped value if it exists.
    func require(
        message messageExpression: @autoclosure (() -> String?) = nil,
        file: StaticString = #file,
        line: UInt = #line
    ) -> Wrapped {
        guard let self = self else {
            var message = "Could not unwrap value of type [\(Wrapped.self)] in file [\(file)] at line [\(line)]."
            if let messageExpression = messageExpression() {
                message.append(" Message: [\(messageExpression)]")
            }
            preconditionFailure(message)
        }

        return self
    }
}
