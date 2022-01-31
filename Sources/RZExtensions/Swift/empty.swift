/// An empty function that does nothing and accepts no arguments.
/// Ideal to pass as a no-op in place of a closure instead of `{ }` for example.
public func empty() {
    // Do nothing.
}

/// An empty function that does nothing and accepts one argument.
/// Ideal to pass as a no-op in place of a closure instead of `{ _ in }` for example.
public func empty<A>(_: A) {
    // Do nothing.
}

/// An empty function that does nothing and accepts two arguments.
/// Ideal to pass as a no-op in place of a closure instead of `{ _, _ in }` for example.
public func empty<A, B>(_: A, _: B) {
    // Do nothing.
}

/// An empty function that does nothing and accepts three arguments.
/// Ideal to pass as a no-op in place of a closure instead of `{ _, _, _ in }` for example.
public func empty<A, B, C>(_: A, _: B, _: C) {
    // Do nothing.
}

/// An empty function that does nothing and accepts four arguments.
/// Ideal to pass as a no-op in place of a closure instead of `{ _, _, _, _ in }` for example.
public func empty<A, B, C, D>(_: A, _: B, _: C, _: D) {
    // Do nothing.
}
