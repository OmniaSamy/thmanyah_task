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
            
          return ViewController()
        }
    }
}
