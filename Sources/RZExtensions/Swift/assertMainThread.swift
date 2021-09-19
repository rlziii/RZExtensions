import Foundation

/// An assertion that checks if the current thread is the main thread.
///
/// This can be used as an internal sanity check that certain code paths are being executed on the main thread without
/// impacting performance of shipping code. In non-shipping code this will cause an exception to be raised if the
/// current thread is not the main thread; however, in shipping code this assertion check is ignored (i.e. this check
/// does **NOT** actually dispatch code onto the main thread, it just checks if the current thread is the main thread).
///
/// - Parameters:
///   - message: A string to print if the current thread is not the main thread. A default is provided.
///   - file: The file name to print with message if the assertion fails. The default is the file where
///           assertMainThread(_:file:line:) is called.
///   - line: The line number to print along with message if the assertion fails. The default is the line number where
///           assertMainThread(_:file:line:) is called.
public func assertMainThread(
    _ message: @autoclosure () -> String = "ASSERTION FAILURE: Expected execution to be on the main thread.",
    file: StaticString = #file,
    line: UInt = #line
) {
    assert(Thread.isMainThread, message(), file: file, line: line)
}
