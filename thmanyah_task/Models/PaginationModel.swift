//
//  PaginationModel.swift
//  thmanyah_task
//
//  Created by Omnia Samy on 15/08/2025.
//

import Foundation

struct PaginationModel: Codable {
    
    var nextPage: String?
    var totalPages: Int?
    
    enum CodingKeys: String, CodingKey {
        
        case nextPage = "next_page"
        case totalPages = "total_pages"
    }
}
