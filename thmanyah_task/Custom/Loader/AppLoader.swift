//
//  AppLoader.swift
//  thmanyah_task
//
//  Created by Omnia Samy on 15/08/2025.
//

import Foundation
import SwiftUI

struct LoadingOverlay: View {
    
    let isLoading: Bool
    
    var body: some View {
        
        if isLoading {
            ZStack {
                Color.gray.opacity(0.2)
                    .ignoresSafeArea(.all)
                
                ProgressView()
                    .progressViewStyle(CircularProgressViewStyle(tint: .white))
                    .scaleEffect(1.5)
            }
            .animation(.easeInOut, value: isLoading)
        }
    }
}
