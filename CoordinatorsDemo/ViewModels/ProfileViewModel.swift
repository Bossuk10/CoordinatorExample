//
//  ProfileViewModel.swift
//  CoordinatorsDemo
//
//  Created by Mykhailo Shtryhel on 10.10.19.
//  Copyright © 2019 Mykhailo Shtryhel. All rights reserved.
//

import Foundation

struct ProfileViewModel {
    var name: String? {
        UserDefaults.standard.string(forKey: "name")
    }
}
