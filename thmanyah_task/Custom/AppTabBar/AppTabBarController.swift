//
//  AppTabBarController.swift
//  thmanyah_task
//
//  Created by Omnia Samy on 15/08/2025.
//

import Foundation
import UIKit

class AppTabBarController: UITabBarController {
    
    override func viewDidLoad () {
        super.viewDidLoad()
        
        setUpTabBar()
        setUpDesign()
    }
    
    private func setUpTabBar() {
        
        let homeViewController = Container.embedVCInNavController(Container.Home.getHomeScreen())
        
        homeViewController.tabBarItem =  UITabBarItem(
            title: nil,
            image:  UIImage(systemName: "house"),
            selectedImage: UIImage(systemName: "house.fill"))
        
        //
        
        let searchViewController = Container.embedVCInNavController(Container.Search.getSearchScreen())
        
        searchViewController.tabBarItem = UITabBarItem(
            title: nil,
            image: UIImage(systemName: "magnifyingglass"),
            selectedImage: UIImage(systemName: "magnifyingglass.fill"))
        
        let viewControllerList = [homeViewController,
                                  searchViewController]
        self.setViewControllers(viewControllerList, animated: false)
    }
    
    private func setUpDesign() {
        
        tabBar.tintColor = .white
        
        // add tabbar background color
        let appearance = UITabBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = .backgroundColor
        
        tabBar.standardAppearance = appearance
        tabBar.scrollEdgeAppearance = appearance
    }
}
