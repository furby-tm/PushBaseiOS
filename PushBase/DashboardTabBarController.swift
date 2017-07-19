//
//  DashboardTabBarController.swift
//  PushBase
//
//  Created by Tyler Furby on 7/15/17.
//  Copyright © 2017 Tyler Furby. All rights reserved.
//

import UIKit

class DashboardTabBarController: UITabBarController {
    override func viewDidLoad() {
        let homeViewController = HomeViewController()
        homeViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .topRated, tag: 0)
        
        let discoverViewController = DiscoverViewController()
        discoverViewController.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 1)
        
        let viewControllerList = [ homeViewController, discoverViewController ]
        viewControllers = viewControllerList.map { UINavigationController(rootViewController: $0) }
    }
}
