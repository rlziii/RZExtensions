public extension Optional {
    /// Attempts to unwrap an optional value and either returns the unwrapped value or, if `nil`, causes an assertion.
    /// Assertions will only stop the execution of the app in non-release builds (see: `assertionFailure(_:file:line:)`),
    /// therefore this method takes a `fallback` parameter to return a safe fallback value for release builds.
    ///
    /// Example usage:
    ///
    ///     var nickname = user.nickname?.unwrap(or: "No nickname")
    ///
    /// In the above example, if the user has a nickname, then `nickname` would be assigned to that value. If the user
    /// didn't have a nickname, then in a release build the value would be assigned to `"No nickname`" and in non-release
    /// builds (e.g. debug builds) the application would crash with an `assertionFailure` and appropriate message.
    ///
    /// - Parameters:
    ///   - fallback: The fallback value to use in release builds if the value is `nil`.
    ///   - file: The file of the calling function; this should generally be left alone so the default value can be used.
    ///   - line: The line of the calling function; this should generally be left along so the default value can be used.
    /// - Returns: The unwrapped value if it exists; if `nil` then this returns the `fallback` value in release builds.
    func unwrap(
        or fallback: @autoclosure () -> Wrapped,
        file: StaticString = #file,
        line: UInt = #line
    ) -> Wrapped {
        guard let self = self else {
            let fallback = fallback()
            assertionFailure("Could not unwrap value of type [\(Wrapped.self)] in file [\(file)] at line [\(line)]. Returning value [\(fallback)] instead.")
            return fallback
        }

        return self
    }
}
