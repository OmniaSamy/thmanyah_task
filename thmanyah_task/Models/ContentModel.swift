//
//  ContentModel.swift
//  thmanyah_task
//
//  Created by Omnia Samy on 15/08/2025.
//

import Foundation

struct ContentModel: Codable {
    
    var name: String?
    var podcastName: String?
    var description: String?
    var avatarURL: String?
    var duration: Int?
    var priority: Int?
    
    enum CodingKeys: String, CodingKey {
        case name
        case podcastName = "podcast_name"
        case description
        case avatarURL = "avatar_url"
        case duration
        case priority
    }
    
    init() {}
    
    init(from decoder: Decoder) throws {
        
        let container = try decoder.container(keyedBy: CodingKeys.self)
        
        name = try container.decodeIfPresent(String.self, forKey: .name)
        podcastName = try container.decodeIfPresent(String.self, forKey: .podcastName)
        description = try container.decodeIfPresent(String.self, forKey: .description)
        avatarURL = try container.decodeIfPresent(String.self, forKey: .avatarURL)
        
        // priority can be Int or String
        if let intValue = try? container.decode(Int.self, forKey: .priority) {
            priority = intValue
        } else if let stringValue = try? container.decode(String.self, forKey: .priority),
                  let converted = Int(stringValue) {
            priority = converted
        } else {
            priority = nil
        }
        
        // duration can be Int or String
        if let intValue = try? container.decode(Int.self, forKey: .duration) {
            duration = intValue
        } else if let stringValue = try? container.decode(String.self, forKey: .duration),
                  let converted = Int(stringValue) {
            duration = converted
        } else {
            duration = nil
        }
    }
}
