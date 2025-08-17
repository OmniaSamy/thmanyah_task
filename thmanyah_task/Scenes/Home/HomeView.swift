//
//  HomeView.swift
//  thmanyah_task
//
//  Created by Omnia Samy on 15/08/2025.
//

import SwiftUI

struct HomeView: View {
    
    @ObservedObject var viewModel: HomeViewModel
    
    let cellWidth = UIScreen.main.bounds.width - 100
    
    var body: some View {
        
        ZStack {
            VStack(spacing: 14) {
                
                // header view
                ScreenHeaderView()
                
                // sections list
                List {
                    ForEach(viewModel.homeSectionsList.indices, id: \.self) { index in
                        
                        let section = viewModel.homeSectionsList[index]
                        Section(header: SectionHeaderView(sectionName: section.name, sectionType: section.type)) {
                            
                            switch SectionRenderType(apiValue: section.type ?? "") {
                                
                            case .square:
                                
                                ScrollView(.horizontal, showsIndicators: false) {
                                    
                                    HStack(spacing: 10) {
                                        
                                        ForEach(section.content ?? [], id: \.priority) { item in
                                            
                                            SquareCell(contentModel: item)
                                        }
                                    } .fixedSize(horizontal: true, vertical: false)
                                        .padding(.vertical, 8)
                                }
                                .frame(height: 180)
                                .background(Color.backgroundColor)
                                
                                
                            case .linesGrid2:
                                
                                
                                ScrollView(.horizontal, showsIndicators: false) {
                                    
                                    LazyHStack(spacing: 12) {
                                        
                                        let items = section.content ?? []
                                        ForEach(0..<items.count/2 + items.count % 2, id: \.self) { index in
                                            
                                            VStack(spacing: 12) {
                                                
                                                LinesGridCell(contentModel: items[index*2])
                                                    .frame(width: cellWidth, alignment: .leading)
                                                
                                                
                                                if index*2 + 1 < items.count {
                                                    LinesGridCell(contentModel: items[index*2 + 1])
                                                        .frame(width: cellWidth, alignment: .leading)
                                                }
                                            }.frame(width: cellWidth, alignment: .leading)
                                        }
                                    }
                                }
                                
                            case .bigSquare:
                                
                                //  ForEach(section.content ?? [], id: \.priority) { item in
                                // to be implmented
                                Text("to be implmented")
                                    .foregroundColor(.yellow)
                                // }
                                
                            case .queue:
                                
                                VStack(spacing: 10) {
                                    
                                    ForEach(section.content ?? [], id: \.priority) { item in
                                        
                                        QueueCell(contentModel: item)
                                    }
                                } .frame(maxWidth: .infinity)
                                    .padding(.vertical, 8)
                                    .background(Color.backgroundColor)
                                
                            default:
                                Text("Empty Section")
                                    .foregroundColor(.yellow)
                            }
                        }.listRowBackground(Color.backgroundColor)
                        
                        // Trigger load more when last section appears
                            .onAppear {
                                if index == viewModel.homeSectionsList.count - 1 {
                                    self.viewModel.loadMoreIfNeeded()
                                }
                            }
                    }
                }
                .listStyle(GroupedListStyle())
                .scrollContentBackground(.hidden)
                
                // Footer loader - for load more only
                if viewModel.isLoadingMore {
                    ProgressView()
                        .progressViewStyle(CircularProgressViewStyle(tint: .white))
                        .padding()
                        .background(Color.clear)
                }
            }
            .padding(.leading, 6)
            .padding(.trailing, 6)
            .padding(.top, 10)
            .background(Color.backgroundColor)
            
            // custom loader - show it untill data back first time
            LoadingOverlay(isLoading: viewModel.isLoading)
        }
    }
}

#Preview {
    HomeView(viewModel: HomeViewModel())
}
