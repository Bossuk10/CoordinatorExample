//
//  BaseCoordinator.swift
//  CoordinatorsDemo
//
//  Created by Mykhailo Shtryhel on 09.10.19.
//  Copyright © 2019 Mykhailo Shtryhel. All rights reserved.
//

import UIKit

/// The `BaseCoordinator` class provides the basic implementation to start and finish a navigation flow.
/// Its responsibility is to manage the presentation logic of view controllers.
/// Subclasses can inherit this class to implement their specific presentation logic in `startFlow` method.
///
/// To start a new navigation flow from this object, assign a coordinator to the `childCoordinator` property
class BaseCoordinator {
    /// The view controller presenting this flow.
    private(set) var presentingViewController: UIViewController?

    /// A child flow coordinator started from this flow.
    var childCoordinator: BaseCoordinator? {
        didSet {
            childCoordinator?.parentCoordinator = self
        }
    }

    /// The parent flow coordinator that started this flow.
    weak var parentCoordinator: BaseCoordinator?

    /// Create a new coordinator object with the view controller presenting this new navigation flow.
    ///
    /// - Parameter presentingViewController: The view controller presenting this flow.
    init(presentingViewController: UIViewController?) {
        self.presentingViewController = presentingViewController
    }

    /// Presents first view controller of the flow.
    func startFlow() {
        // Subclasses can implement this method to create and display the first view controller of the flow.
    }

    /// Informs the parent coordinator, that its child finished.
    /// Can be used to set `childCoordinator` to `nil`.
    func didFinishChildFlow() {
        // Makes sure to free memory, as childCoordinator can hold references to view controllers and their objects,
        // like view models and their model objects.
        childCoordinator = nil
    }

    /// Call this method to dismiss the view controllers involved in this flow.
    ///
    /// - Parameter completion: A completion handler getting called after view did disappear.
    func finishFlow(completion: (() -> Void)? = nil) {
        presentingViewController?.dismiss(animated: true) { [weak self] in
            self?.parentCoordinator?.didFinishChildFlow()
            completion?()
        }
    }
}
