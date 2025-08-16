//
//  NavigationControllers.swift
//  thmanyah_task
//
//  Created by Omnia Samy on 15/08/2025.
//

import Foundation
import UIKit

class AppNavigationController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupNavigationBarDesign()
    }
}

extension AppNavigationController {
    
    func setupNavigationBarDesign() {
                
        self.navigationBar.isHidden = true
    }
}
