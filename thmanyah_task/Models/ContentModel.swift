//
//  ContentModel.swift
//  thmanyah_task
//
//  Created by Omnia Samy on 15/08/2025.
//

import Foundation

struct ContentModel: Codable {
    
    var podcastID: String?
    var name: String?
    var description: String?
    var avatarURL: String?
    var episodeCount: Int?
    var duration: Int?
    var language: String?
    var priority: Int?
    var popularityScore: Int?
    var score: Double?
    
    enum CodingKeys: String, CodingKey {
        
        case podcastID = "podcast_id"
        case name = "name"
        case description = "description"
        case avatarURL = "avatar_url"
        case episodeCount = "episode_count"
        case duration = "duration"
        case language = "language"
        case priority = "priority"
        case popularityScore = "popularityScore"
        case score = "score"
    }
}
