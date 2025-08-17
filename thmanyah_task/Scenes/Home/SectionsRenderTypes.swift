//
//  SectionsRenderTypes.swift
//  thmanyah_task
//
//  Created by Omnia Samy on 16/08/2025.
//

import Foundation

// list sections render types
enum SectionRenderType {
    
    case square
    case linesGrid2
    case bigSquare
    case queue
    case other
    
    init(apiValue: String) {
        
        switch apiValue {
            
        case "square":
            self = .square
        case "2_lines_grid":
            self = .linesGrid2
        case "big_square", "big square":
            self = .bigSquare
        case "queue":
            self = .queue
                        
        default:
            self = .other
        }
    }
}
