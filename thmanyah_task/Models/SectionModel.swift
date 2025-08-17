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
    var orderNumber: Int
    var content: [ContentModel]?
    
    enum CodingKeys: String, CodingKey {
        
        case name
        case type
        case contentType = "content_type"
        case orderNumber = "order"
        case content
    }
    
    init() {
        self.orderNumber = 0
    }
    
    init(from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        name = try container.decodeIfPresent(String.self, forKey: .name)
        type = try container.decodeIfPresent(String.self, forKey: .type)
        contentType = try container.decodeIfPresent(String.self, forKey: .contentType)
        content = try container.decodeIfPresent([ContentModel].self, forKey: .content)
        
        // orderNumber can be Int or String
        if let intValue = try? container.decode(Int.self, forKey: .orderNumber) {
            orderNumber = intValue
        } else if let stringValue = try? container.decode(String.self, forKey: .orderNumber),
                  let converted = Int(stringValue) {
            orderNumber = converted
        } else {
            orderNumber = 0
        }
    }
}
