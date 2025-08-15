//
//  UIColor+App.swift
//  thmanyah_task
//
//  Created by Omnia Samy on 15/08/2025.
//

import Foundation
import UIKit

extension UIColor {
    
    class var backgroundColor: UIColor {
        guard let color = UIColor(named: "Background Color") else {
            return UIColor()
        }
        return color
    }
}
