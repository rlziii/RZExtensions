/// A convenient "instance" of `Void` to make it more ergonomic to write instead of `()` where appropriate.
///
/// Example:
///
///     let subject = PassthroughSubject<Void, Never>()
///     subject.send(void) // instead of `subject.send(())`
public let void: Void = ()
