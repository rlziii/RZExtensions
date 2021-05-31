#if canImport(UIKit)
import UIKit

/// A `UIViewController` subclass (generic over some `UIView`) that handles programmatic Auto Layout setup more cleanly.
open class ProgrammaticViewController<View: UIView>: UIViewController {

    // MARK: - Public Properties

    /// The strongly-typed view for this view controller (i.e. the generic `UIView` casted as its concrete type).
    public var contentView: View {
        view as! View
    }

    // MARK: - Initialization

    public init() {
        super.init(nibName: nil, bundle: nil)
    }

    @available(*, unavailable)
    private override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        fatalError("Use \(String(describing: ProgrammaticViewController.init)) instead.")
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("Use \(String(describing: ProgrammaticViewController.init)) instead.")
    }

    // MARK: - UIViewController Override Methods

    public override func loadView() {
        view = View()
    }
}

#endif
