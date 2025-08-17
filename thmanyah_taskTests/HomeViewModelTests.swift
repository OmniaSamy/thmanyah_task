//
//  HomeViewModelTests.swift
//  thmanyah_taskTests
//
//  Created by Omnia Samy on 17/08/2025.
//

import XCTest

@testable import thmanyah_task

final class HomeViewModelTests: XCTestCase {
    
    func test_sortContentList_sortsEachSectionByPriorityAscending() {
        
        // GIVEN: a view model with unsorted content in section
        
        let s1 = SectionModel(name: "test1",
                              type: "2_lines_grid",
                              contentType: "episode",
                              orderNumber: 1,
                              content: [
                                ContentModel(podcastID: "878787", name: "test11", podcastName: "" ,description: "", avatarURL: "", episodeCount: 2, duration: 300, language: "en", priority: 3, popularityScore: 3, score: 2),
                                ContentModel(podcastID: "878787", name: "test11", podcastName: "" ,description: "", avatarURL: "", episodeCount: 2, duration: 300, language: "en", priority: 1, popularityScore: 3, score: 2),
                                ContentModel(podcastID: "878787", name: "test11", podcastName: "" ,description: "", avatarURL: "", episodeCount: 2, duration: 300, language: "en", priority: 2, popularityScore: 3, score: 2)
                              ])
        
        let s2 = SectionModel(name: "test2",
                              type: "big_square",
                              contentType: "episode",
                              orderNumber: 1,
                              content: [
                                ContentModel(podcastID: "878787", name: "test22", podcastName: "" ,description: "", avatarURL: "", episodeCount: 2, duration: 300, language: "en", priority: 2, popularityScore: 3, score: 2),
                                ContentModel(podcastID: "878787", name: "test22", podcastName: "" ,description: "", avatarURL: "", episodeCount: 2, duration: 300, language: "en", priority: 1, popularityScore: 3, score: 2),
                                ContentModel(podcastID: "878787", name: "test22", podcastName: "" ,description: "", avatarURL: "", episodeCount: 2, duration: 300, language: "en", priority: nil, popularityScore: 3, score: 2)
                              ])
        
        let vm = HomeViewModel()
        vm.homeSectionsList = [s1, s2]
        
        // WHEN: sort
        vm.sortContentList()
        
        // assert true
        XCTAssertEqual(
            
            vm.homeSectionsList[0].content?[0].priority, 1
        )
    }
}
