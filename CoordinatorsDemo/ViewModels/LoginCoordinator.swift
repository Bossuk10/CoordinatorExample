//
//  LoginCoordinator.swift
//  CoordinatorsDemo
//
//  Created by Mykhailo Shtryhel on 09.10.19.
//  Copyright © 2019 Mykhailo Shtryhel. All rights reserved.
//

import UIKit

final class LoginCoordinator: BaseCoordinator {
    private let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
        super.init(presentingViewController: nil)
    }
    
    override func startFlow() {
        let viewController = ViewControllersFactory.makeLoginViewController(with: self)
        
        window.rootViewController = viewController
        window.makeKeyAndVisible()
    }
}

extension LoginCoordinator: LoginViewControllerNavigationDelegate {
    func didTapLoginButton() {
        let coordinator = MapCoordinator(window: window)
        
        coordinator.startFlow()
        finishFlow()
    }
}
