//
//  HomeViewModel.swift
//  thmanyah_task
//
//  Created by Omnia Samy on 15/08/2025.
//

import Foundation

class HomeViewModel: ObservableObject {
    
    var homeResponse: NetworkResponse?
    var homeSectionsList: [SectionModel] = []
    
    // for show loader untill api back
    @Published var isLoading: Bool = false
    
    init() {
        getHomeList(page: 1)
    }
}

extension HomeViewModel {
    
    func getHomeList(page: Int) {
        
        isLoading = true
        NetworkManager.shared.getHomeList(page: page,
                                          completion: { [weak self] (result: Result<NetworkResponse, NetworkError>, _) in
            // self?.isLoadingMore = false
            switch result {
            case .success(let data):
                print("data \(data)")
                
                self?.homeResponse = data
                self?.homeSectionsList = data.sections ?? []
                
            case .failure(let error):
                print("error \(error)")
                AppAlertManager.showError(message: error.errorMessage())
                
            }
            
            self?.isLoading = false
        })
    }
}

// list sections render types
enum SectionRenderType {
    
    case square
    case linesGrid2
    case bigSquare
    case queue
    case other
    
    init(apiValue: String) {
        
        switch apiValue {
            
        case "square":
            self = .square
        case "2_lines_grid":
            self = .linesGrid2
        case "big_square", "big square":
            self = .bigSquare
        case "queue":
            self = .queue
                        
        default:
            self = .other
        }
    }
}
