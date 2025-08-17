//
//  SquareCell.swift
//  thmanyah_task
//
//  Created by Omnia Samy on 16/08/2025.
//

import SwiftUI

struct SquareCell: View {
    
    let contentModel: ContentModel?
    
    @StateObject private var imageLoader: ImageLoader
    
    init(contentModel: ContentModel) {
        
        self.contentModel = contentModel
        
        let imageURL = (contentModel.avatarURL ?? "")
        _imageLoader = StateObject(wrappedValue: ImageLoader(url: imageURL))
    }
    
    var body: some View  {
        
        VStack(spacing: 2) {
            
            // Card Image/Artwork
            if let image = imageLoader.image {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 110, height: 110)
                    .clipped()
                    .cornerRadius(12)
            } else {
                Color.gray.opacity(0.2)
                    .frame(width: 110, height: 110)
                    .cornerRadius(12)
            }
            
            // content Info
            VStack(alignment: .center, spacing: 4) {
                
                Text(contentModel?.name ?? "NA")
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .lineLimit(1)
                
                Text(contentModel?.description ?? "NA")
                    .font(.caption)
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                    .lineLimit(2)
                
                HStack(spacing: 12) {
                    // Duration
                    HStack(spacing: 2) {
                        Image(systemName: "clock")
                            .font(.caption2)
                            .foregroundColor(.gray)
                        Text(String(contentModel?.duration ?? 0))
                            .font(.caption2)
                            .foregroundColor(.gray)
                    }
                    
                    // Time
                    Text("00")
                        .font(.caption2)
                        .foregroundColor(.gray)
                }
            }
            .frame(width: 110)
        }
        .background(Color.clear)
    }
}

#Preview {
    SquareCell(contentModel: ContentModel())
}
