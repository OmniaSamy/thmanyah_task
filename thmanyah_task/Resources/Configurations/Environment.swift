//
//  Environment.swift
//  thmanyah_task
//
//  Created by Omnia Samy on 15/08/2025.
//

import Foundation

enum Environment {
    
    // MARK: - Keys
    enum Keys {
        enum Plist {
            static let homeBaseURL = "HOME_BASE_URL"
            static let searchBaseURL = "SEARCH_BASE_URL"
        }
    }
    
    // MARK: - Plist
    private static let infoDictionary: [String: Any] = {
        guard let dict = Bundle.main.infoDictionary else {
            fatalError("Plist file not found")
        }
        return dict
    }()
    
    // MARK: - Plist values
    static let homeBaseURL: String = {
        guard let rootURLstring = Environment.infoDictionary[Keys.Plist.homeBaseURL] as? String else {
            fatalError("Root URL not set in plist for this environment")
        }
        let baseUrl = "https://\(rootURLstring)"
        return baseUrl
    }()
    
    static let searchBaseURL: String = {
        guard let rootURLstring = Environment.infoDictionary[Keys.Plist.searchBaseURL] as? String else {
            fatalError("Root URL not set in plist for this environment")
        }
        let baseUrl = "https://\(rootURLstring)"
        return baseUrl
    }()
}
