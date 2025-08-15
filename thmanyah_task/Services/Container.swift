//
//  Container.swift
//  thmanyah_task
//
//  Created by Omnia Samy on 15/08/2025.
//

import Foundation

import UIKit
import SwiftUI

class Container {
    
    class func embedVCInNavController(_ viewController: UIViewController) -> UIViewController {
        
        let nav = AppNavigationController(rootViewController: viewController)
        return nav
    }
    
    class Home {
        
        class func getHomeScreen() -> UIViewController {
            
            let viewModel = HomeViewModel()
            let homeView = HomeView(viewModel: viewModel)
            let hostingController = UIHostingController(rootView: homeView)
            return hostingController
        }
    }
    
    class Search {
        
        class func getSearchScreen() -> UIViewController {
            
            let viewModel = SearchViewModel()
            let vc = SearchViewController()
            vc.viewModel = viewModel
            return vc
        }
    }
}
