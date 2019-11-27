//
//  MainCoordinator.swift
//  CoordinatorsDemo
//
//  Created by Mykhailo Shtryhel on 09.10.19.
//  Copyright © 2019 Mykhailo Shtryhel. All rights reserved.
//

import UIKit

final class MainCoordinator: BaseCoordinator {
    private let window: UIWindow
    private let authProvider: AuthProviding
    
    required init(window: UIWindow, authProvider: AuthProviding) {
        self.window = window
        self.authProvider = authProvider
        super.init(presentingViewController: nil)
    }
    
    override func startFlow() {
        let coordinator: BaseCoordinator
        
        if authProvider.isLoggedIn {
            coordinator = MapCoordinator(window: window)
        } else {
            coordinator = LoginCoordinator(window: window)
        }
        
        coordinator.startFlow()
        self.childCoordinator = coordinator
    }
}
