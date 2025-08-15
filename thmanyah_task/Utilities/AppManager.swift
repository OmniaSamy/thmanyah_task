//
//  AppManager.swift
//  thmanyah_task
//
//  Created by Omnia Samy on 15/08/2025.
//

import Foundation
import UIKit

class AppManager {
    
    static var shared: AppManager = AppManager()
    var window: UIWindow?
    
    func setRootView(viewController: UIViewController) {
        window?.rootViewController = viewController
        self.window?.makeKeyAndVisible()
    }
    
    func pushViewController(viewController: UIViewController) {
        
        if let nav = window?.rootViewController as? UINavigationController {
            nav.pushViewController(viewController, animated: true)
        }
    }
    
    func forceDarkModel() {
        
        self.window?.overrideUserInterfaceStyle = .dark
    }
}
