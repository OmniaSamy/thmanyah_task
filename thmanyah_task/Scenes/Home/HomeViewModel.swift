//
//  HomeViewModel.swift
//  thmanyah_task
//
//  Created by Omnia Samy on 15/08/2025.
//

import Foundation

class HomeViewModel: ObservableObject {
    
    
}

extension HomeViewModel {
    
    func getHomeList(page: Int = 1) {
        
        //  isLoading = true
        NetworkManager.shared.getHomeList(page: page,
                                          completion: { [weak self] (result: Result<NetworkResponse, NetworkError>, _) in
            // self?.isLoadingMore = false
            switch result {
            case .success(let data):
                print("data \(data)")
                
                
                
            case .failure(let error):
                print("error \(error)")
                AppAlertManager.showError(message: error.errorMessage())
                
                
            }
            
        })
    }
}
