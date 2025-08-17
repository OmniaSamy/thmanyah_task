//
//  NetworkManager+Search.swift
//  thmanyah_task
//
//  Created by Omnia Samy on 17/08/2025.
//

import Foundation
import Moya

extension NetworkManager {
    
    func getSearchResult(query: String, completion: @escaping(_ result: Swift.Result<NetworkResponse, NetworkError>,
                                               _ statusCode: Int?) -> Void)  -> Cancellable {
        
        provider.request(MultiTarget(SearchService.getSearchResult(query: query))) { result in
            self.parseResponse(moyaResult: result, completion: completion)
        }
    }
}
