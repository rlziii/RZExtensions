/// A function that accepts an expression that evaluates to a Bool, and then returns the negated value of that Bool.
///
/// For example, `not("a" == "a")` would return `false` because `"a" == "a"` returns `true` and `!true` is `false`.
/// Similarly, `not(true)` would return `false` as the parameter that `not(_:)` accepts is an `@autoclosure`.
///
/// - Parameter expression: The expression to be evaluated and then negated.
/// - Returns: The negated Bool.
public func not(_ expression: @autoclosure () -> Bool) -> Bool {
    !expression()
}
