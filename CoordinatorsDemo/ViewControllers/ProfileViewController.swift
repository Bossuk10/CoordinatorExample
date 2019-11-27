//
//  ProfileViewController.swift
//  CoordinatorsDemo
//
//  Created by Mykhailo Shtryhel on 10.10.19.
//  Copyright © 2019 Mykhailo Shtryhel. All rights reserved.
//

import UIKit

final class ProfileViewController: UIViewController {
    private let viewModel: ProfileViewModel
    
    @IBOutlet private weak var nameLabel: UILabel!
    
    required init(viewModel: ProfileViewModel) {
        self.viewModel = viewModel
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        nameLabel.text = viewModel.name
    }
}
