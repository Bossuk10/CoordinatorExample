//
//  LoginViewController.swift
//  CoordinatorsDemo
//
//  Created by Mykhailo Shtryhel on 09.10.19.
//  Copyright © 2019 Mykhailo Shtryhel. All rights reserved.
//

import UIKit

protocol LoginViewControllerNavigationDelegate: AnyObject {
    func didTapLoginButton()
}

final class LoginViewController: UIViewController {

    private let viewModel: LoginViewModel
    
    @IBOutlet private weak var nameTextField: UITextField!
    @IBOutlet private weak var passwordTextField: UITextField!
    
    required init(viewModel: LoginViewModel) {
        self.viewModel = viewModel
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @IBAction private func didTapLoginButton(_ sender: Any) {
        viewModel.didTapLoginButton(with: nameTextField.text, password: passwordTextField.text)
    }
}
