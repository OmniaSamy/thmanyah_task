//
//  SearchService.swift
//  thmanyah_task
//
//  Created by Omnia Samy on 17/08/2025.
//

import Foundation
import Moya

enum SearchService {
    case getSearchResult(query: String)
}

extension SearchService: TargetType {
    
    var baseURL: URL {
        return URL(string: NetworkManager.networkConfig.searchBaseURL)!
    }
    
    var path: String {
        switch self {
        case .getSearchResult:
            return "search"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .getSearchResult:
            return .get
        }
    }
    
    var sampleData: Data {
        return Data()
    }
    
    var task: Task {
        
        switch self {
        case .getSearchResult(let query):
            
            return .requestParameters(parameters: ["query": query],
                                      encoding: URLEncoding.default)
        }
    }
    
    var headers: [String: String]? {
        return nil
    }
}
