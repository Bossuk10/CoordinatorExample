//
//  LoginViewModel.swift
//  CoordinatorsDemo
//
//  Created by Mykhailo Shtryhel on 09.10.19.
//  Copyright © 2019 Mykhailo Shtryhel. All rights reserved.
//

struct LoginViewModel {
    
    private let navigationDelegate: LoginViewControllerNavigationDelegate?
    private let authManager: AuthManager
    
    init(authManager: AuthManager, navigationDelegate: LoginViewControllerNavigationDelegate?) {
        self.authManager = authManager
        self.navigationDelegate = navigationDelegate
    }
    
    func didTapLoginButton(with name: String?, password: String?) {
        guard let name = name, let password = password,
            !name.isEmpty, !password.isEmpty else {
            return
        }
        
        authManager.login(with: name, password: password)
        navigationDelegate?.didTapLoginButton()
    }
}
