//
//  SearchViewModel.swift
//  thmanyah_task
//
//  Created by Omnia Samy on 15/08/2025.
//

import Foundation
import Moya

class SearchViewModel: ObservableObject {
    
    @Published var searchQuery: String = ""
    
    @Published var searchResultList: [SectionModel] = []
    
    // add this to cancel old request before send new one
    private var searchRequest: Cancellable?
    
    
    func getSearchResult() {
        
        // cancel old request before send another one
        searchRequest?.cancel()
        
        searchRequest = NetworkManager.shared.getSearchResult(query: searchQuery, completion: { [weak self] (result: Result<NetworkResponse, NetworkError>, _) in
            switch result {
            case .success(let data):
                print("data \(data)")
                
                self?.searchResultList = data.sections ?? []
                
            case .failure(let error):
                print("error \(error)")
                AppAlertManager.showError(message: error.errorMessage())
                
            }
        })
    }
}
