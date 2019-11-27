//
//  MapViewModel.swift
//  CoordinatorsDemo
//
//  Created by Mykhailo Shtryhel on 09.10.19.
//  Copyright © 2019 Mykhailo Shtryhel. All rights reserved.
//

struct MapViewModel {
    let navigationDelegate: MapViewControllerNavigationDelegate
    
    init(navigationDelegate: MapViewControllerNavigationDelegate) {
        self.navigationDelegate = navigationDelegate
    }
    
    func didTapProfileButton() {
        navigationDelegate.didTapProfileButton()
    }
}
