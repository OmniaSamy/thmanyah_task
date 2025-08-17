//
//  HomeService.swift
//  thmanyah_task
//
//  Created by Omnia Samy on 15/08/2025.
//

import Foundation
import Moya

enum HomeService {
    case getHomeList(page: Int)
}

extension HomeService: TargetType {
    
    var baseURL: URL {
        return URL(string: NetworkManager.networkConfig.homeBaseURL)!
    }
    
    var path: String {
        switch self {
        case .getHomeList:
            return "home_sections"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .getHomeList:
            return .get
        }
    }
    
    var sampleData: Data {
        return Data()
    }
    
    var task: Task {
        
        switch self {
        case .getHomeList(let page):
            
            let parames = ["page": page]
            return .requestParameters(parameters: parames,
                                      encoding: URLEncoding.default)
        }
    }
    
    var headers: [String: String]? {
        return nil
    }
}
