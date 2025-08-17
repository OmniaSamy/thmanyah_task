//
//  NetworkManager+Movie.swift
//  thmanyah_task
//
//  Created by Omnia Samy on 15/08/2025.
//

import Foundation
import Moya

extension NetworkManager {
    
    func getHomeList(page: Int,
                           completion: @escaping(_ result: Swift.Result<NetworkResponse, NetworkError>,
                                                 _ statusCode: Int?) -> Void) {
        
        provider.request(MultiTarget(HomeService.getHomeList(page: page))) { result in
            self.parseResponse(moyaResult: result, completion: completion)
        }
    }
}
