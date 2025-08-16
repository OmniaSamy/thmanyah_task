//
//  SectionHeaderView.swift
//  thmanyah_task
//
//  Created by Omnia Samy on 15/08/2025.
//

import SwiftUI

struct SectionHeaderView: View {
    
    var sectionName: String?
    var sectionType: String?
    
    var body: some View {
        
        HStack {
            Text(sectionName ?? "")
                .font(.bold(size: 18))
                .foregroundColor((SectionRenderType(apiValue: sectionType ?? "")  == .queue) ? .yellow : .white)
            
            Spacer()
            
            Button(action: {}) {
                Image(systemName: "chevron.right")
                
                    .foregroundColor(.white)
                    .font(.bold(size: 20))
            }
        }
       // .padding(.vertical, 2)
        .background(Color.backgroundColor)
    }
}

#Preview {
    SectionHeaderView(sectionName: "test", sectionType: "queu")
}
