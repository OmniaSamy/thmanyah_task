//
//  Network Response.swift
//  thmanyah_task
//
//  Created by Omnia Samy on 15/08/2025.
//

import Foundation

struct NetworkResponse: Codable {
    
    var sections: [SectionModel]?
    var pagination: PaginationModel?
    
    var errors: [String]? // in case api returned error 
    
    enum CodingKeys: String, CodingKey {
        
        case sections = "sections"
        case pagination = "pagination"
    }
}
