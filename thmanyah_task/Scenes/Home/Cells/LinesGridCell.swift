//
//  LinesGridCell.swift
//  thmanyah_task
//
//  Created by Omnia Samy on 16/08/2025.
//

import SwiftUI

struct LinesGridCell: View {
    
    let contentModel: ContentModel?
    
    @StateObject private var imageLoader: ImageLoader
    
    let onPlayPause: () -> Void
    let onMoreOptions: () -> Void
        
    let cellWidth = UIScreen.main.bounds.width - 100
    
    init(contentModel: ContentModel) {
        
        self.contentModel = contentModel
        
        let imageURL = (contentModel.avatarURL ?? "")
        _imageLoader = StateObject(wrappedValue: ImageLoader(url: imageURL))
        
        self.onPlayPause = {}
        self.onMoreOptions = {}
    }
    
    var body: some View {
        
        
        HStack(spacing: 10) {
            
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
            
            VStack(spacing: 16) {
                
                // Title
                Text(contentModel?.podcastName ?? "NA")
                    .font(.headline)
                    .fontWeight(.medium)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.trailing)
                    .lineLimit(3)
                
                HStack(spacing: 10) {
                    Button(action: {}) {
                        Image(systemName: "line.3.horizontal")
                            .font(.system(size: 18))
                            .foregroundColor(.white)
                    }
                    
                    Button(action: onMoreOptions) {
                        Image(systemName: "ellipsis")
                            .font(.system(size: 18))
                            .foregroundColor(.white)
                    }
                }
            }
        }
        .frame(width: cellWidth, alignment: .leading)
        .padding(.horizontal, 10)
        .padding(.vertical, 10)
        .cornerRadius(10)
    }
}

#Preview {
    LinesGridCell(contentModel: ContentModel())
}
