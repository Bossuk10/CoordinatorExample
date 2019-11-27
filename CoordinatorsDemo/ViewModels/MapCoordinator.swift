//
//  MapCoordinator.swift
//  CoordinatorsDemo
//
//  Created by Mykhailo Shtryhel on 10.10.19.
//  Copyright © 2019 Mykhailo Shtryhel. All rights reserved.
//

import UIKit

final class MapCoordinator: BaseCoordinator {
    private let window: UIWindow
    private var presentedViewController: UIViewController?
    
    init(window: UIWindow) {
        self.window = window
        super.init(presentingViewController: nil)
    }
    
    override func startFlow() {
        let viewController = ViewControllersFactory.makeMapViewController(with: self)
        
        window.rootViewController = viewController
        window.makeKeyAndVisible()
        presentedViewController = viewController
    }
}

extension MapCoordinator: MapViewControllerNavigationDelegate {
    func didTapProfileButton() {
        let viewController = ViewControllersFactory.makeProfileViewController()
        
        presentedViewController?.present(viewController,
                                         animated: true,
                                         completion:  nil)
    }
}
