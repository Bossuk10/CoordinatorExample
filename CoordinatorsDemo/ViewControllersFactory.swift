//
//  ViewControllersFactory.swift
//  CoordinatorsDemo
//
//  Created by Mykhailo Shtryhel on 09.10.19.
//  Copyright © 2019 Mykhailo Shtryhel. All rights reserved.
//

import UIKit

struct ViewControllersFactory {
    static func makeLoginViewController(with navigationDelegate: LoginViewControllerNavigationDelegate) -> LoginViewController {
        let authManager = AuthManager()
        let viewModel = LoginViewModel(authManager: authManager, navigationDelegate: navigationDelegate)
        
        return LoginViewController(viewModel: viewModel)
    }
    
    static func makeMapViewController(with navigationDelegate: MapViewControllerNavigationDelegate) -> MapViewController {
        let viewModel = MapViewModel(navigationDelegate: navigationDelegate)
        
        return MapViewController(viewModel: viewModel)
    }
    
    static func makeProfileViewController() -> ProfileViewController {
        let viewModel = ProfileViewModel()
        
        return ProfileViewController(viewModel: viewModel)
    }
}
