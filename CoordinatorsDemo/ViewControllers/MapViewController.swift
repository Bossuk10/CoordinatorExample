//
//  MapViewController.swift
//  CoordinatorsDemo
//
//  Created by Mykhailo Shtryhel on 09.10.19.
//  Copyright © 2019 Mykhailo Shtryhel. All rights reserved.
//

import UIKit

protocol MapViewControllerNavigationDelegate {
    func didTapProfileButton()
}

final class MapViewController: UIViewController {
    private let viewModel: MapViewModel
    
    required init(viewModel: MapViewModel) {
        self.viewModel = viewModel
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @IBAction private func didTapProfileButton(_ sender: Any) {
        viewModel.didTapProfileButton()
    }
}
