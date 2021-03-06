#if os(iOS)
import UIKit

/// A `UIView` subclass that handles programmatic Auto Layout setup more cleanly.
open class ProgrammaticView: UIView {

    // MARK: - Private Properties

    private var hasSetupSelf = false
    private var hasSetupSubviews = false
    private var hasSetupConstraints = false

    // MARK: - Initialization

    public init() {
        super.init(frame: .zero)
        setupSelf()
        setupSubviews()
        setupConstraints()
    }

    @available(*, unavailable)
    private override init(frame: CGRect) {
        fatalError("Use \(String(describing: ProgrammaticView.init)) instead.")
    }

    @available(*, unavailable)
    required public init?(coder: NSCoder) {
        fatalError("Use \(String(describing: ProgrammaticView.init)) instead.")
    }

    // MARK: - Public Methods

    /// Override this method to perform any view setup, such as changing the view's background color.
    /// This method is called during the view's `init()` method and should not be called manually.
    /// Always be sure to call `super.setupSelf()` at the beginning of the overridden version of this method.
    open func setupSelf() {
        guard !hasSetupSelf else {
            assertionFailure("Attempted to execute \(#function) for more than once.")
            return
        }

        hasSetupSelf = true
    }

    /// Override this method to setup the view's subviews.
    /// This method is called during the view's `init()` method and should not be called manually.
    /// Always be sure to call `super.setupSubviews()` at the beginning of the overridden version of this method.
    open func setupSubviews() {
        guard !hasSetupSubviews else {
            assertionFailure("Attempted to execute \(#function) more than once.")
            return
        }

        hasSetupSubviews = true
    }

    /// Override this method to setup the view's constraints.
    /// This method is called during the view's `init()` method and should not be called manually.
    /// Always be sure to call `super.setupConstraints()` at the beginning of the overridden version of this method.
    open func setupConstraints() {
        guard !hasSetupConstraints else {
            assertionFailure("Attempted to execute \(#function) more than once.")
            return
        }

        hasSetupConstraints = true
    }
}

#endif
