//
//  SectionModel.swift
//  thmanyah_task
//
//  Created by Omnia Samy on 15/08/2025.
//

import Foundation

struct SectionModel: Codable {
    
    var name: String?
    var type: String?
    var contentType: String?
    var orderNumber: Int?
    var content: [ContentModel]?
    
    enum CodingKeys: String, CodingKey {
        
        case name = "name"
        case type = "type"
        case contentType = "content_type"
        case orderNumber = "order"
        case content = "content"
    }
}
