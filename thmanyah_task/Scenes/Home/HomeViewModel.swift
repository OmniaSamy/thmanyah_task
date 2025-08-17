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
    
    var currentPage: Int = 1
    
    // for show loader untill api back in first time user open app
    @Published var isLoading: Bool = false
    
    @Published var isLoadingMore = false
    
    
    init() {
        isLoading = true
        getHomeList(page: 1)
    }
}

extension HomeViewModel {
    
    func getHomeList(page: Int) {
        
        
        NetworkManager.shared.getHomeList(page: page,
                                          completion: { [weak self] (result: Result<NetworkResponse, NetworkError>, _) in
            // self?.isLoadingMore = false
            switch result {
            case .success(let data):
                print("data \(data)")
                
                self?.homeResponse = data
                self?.homeSectionsList.append(contentsOf: data.sections ?? [])
                self?.sortContentList()
                
            case .failure(let error):
                print("error \(error)")
                AppAlertManager.showError(message: error.errorMessage())
                
            }
            
            self?.isLoading = false
            self?.isLoadingMore = false
        })
    }
    
    func loadMoreIfNeeded() {
        
        guard !isLoadingMore, currentPage != self.homeResponse?.pagination?.totalPages else { return }
        
        isLoadingMore = true
        currentPage += 1
        getHomeList(page: currentPage)
        
    }
    
    func sortContentList() {
        
        homeSectionsList = homeSectionsList.map { section in
            var newSection = section
            newSection.content = section.content?.sorted { ($0.priority ?? 0) < ($1.priority ?? 0) }
            return newSection
        }
    }
}
