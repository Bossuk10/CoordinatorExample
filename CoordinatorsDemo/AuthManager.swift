//
//  AuthManager.swift
//  CoordinatorsDemo
//
//  Created by Mykhailo Shtryhel on 09.10.19.
//  Copyright © 2019 Mykhailo Shtryhel. All rights reserved.
//

import UIKit

protocol AuthProviding {
    var isLoggedIn: Bool { get }
}

struct AuthManager: AuthProviding {
    var isLoggedIn: Bool {
        UserDefaults.standard.bool(forKey: "isLoggedIn")
    }
    
    func login(with name: String, password: String) {
        UserDefaults.standard.set(name, forKey: "name")
        UserDefaults.standard.set(true, forKey: "isLoggedIn")
    }
}
