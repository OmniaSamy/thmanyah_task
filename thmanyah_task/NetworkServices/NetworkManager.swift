//
//  NetworkManager.swift
//  thmanyah_task
//
//  Created by Omnia Samy on 15/08/2025.
//

import Foundation
import Moya

class NetworkManager {
    
    typealias MoyaCompletion = Result<Moya.Response, MoyaError>
    typealias NetworkCompletion<T: Codable> = (_ result: Swift.Result<T, NetworkError>,
                                               _ statusCode: Int?) -> Void
    
    static var networkConfig: NetworkDefaults {
        return NetworkManager.shared._networkConfig!
    }
    
    static var shared: NetworkManager!
    var _networkConfig: NetworkDefaults?
    
    var provider: MoyaProvider<MultiTarget>!
    
    init(config: NetworkDefaults) {
        
        self._networkConfig = config
        NetworkManager.shared = self
        
        let headerPlugin = StaticHeaderPlugin(
            headers: [
                "Accept": "application/json"
            ])
        
        provider = MoyaProvider<MultiTarget>(plugins: [headerPlugin, NetworkLoggerPlugin()])
    }
}

public struct StaticHeaderPlugin: PluginType {
    
    var headers: [String: String] = [:]
    
    public init(headers: [String: String]) {
        self.headers = headers
    }
    
    public func prepare(_ request: URLRequest, target: TargetType) -> URLRequest {
        var request = request
        
        headers.forEach { (key, value) in
            request.addValue(value, forHTTPHeaderField: key)
        }
        
        return request
    }
}
