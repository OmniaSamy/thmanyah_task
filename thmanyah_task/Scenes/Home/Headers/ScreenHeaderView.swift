//
//  ScreenHeaderView.swift
//  thmanyah_task
//
//  Created by Omnia Samy on 16/08/2025.
//

import SwiftUI

struct ScreenHeaderView: View {
    
    var body: some View {
        
        HStack {
            
            Image(systemName: "person.fill")
                       .font(.system(size: 30))
                       .foregroundColor(.white)         // icon color
                       .frame(width: 40, height: 40)    // circle size
                       .background(Circle().fill(Color.gray))
            
            Text("Good morning omnia")
                .font(.bold(size: 14))
                .foregroundColor(.white)
            
            Spacer()
            
            Button(action: {}) {
                Image(systemName: "bell")
                
                    .foregroundColor(.white)
                    .font(.bold(size: 20))
            }
        }
    }
}

#Preview {
    ScreenHeaderView()
}
