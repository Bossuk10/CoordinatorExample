//
//  AppDelegate.swift
//  CoordinatorsDemo
//
//  Created by Mykhailo Shtryhel on 09.10.19.
//  Copyright © 2019 Mykhailo Shtryhel. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    private var mainCoordinator: BaseCoordinator?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let window = UIWindow(frame: UIScreen.main.bounds)
        let authManager = AuthManager()
        mainCoordinator = MainCoordinator(window: window, authProvider: authManager)
        
        mainCoordinator?.startFlow()
        
        return true
    }

}

