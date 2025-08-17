//
//  QueueCell.swift
//  thmanyah_task
//
//  Created by Omnia Samy on 16/08/2025.
//

import SwiftUI

struct QueueCell: View {
    
    let contentModel: ContentModel?
    @StateObject private var imageLoader: ImageLoader
    let onPlayPause: () -> Void
    
    init(contentModel: ContentModel) {
        
        self.contentModel = contentModel
        
        let imageURL = (contentModel.avatarURL ?? "")
        _imageLoader = StateObject(wrappedValue: ImageLoader(url: imageURL))
        
        self.onPlayPause = {}
    }
    
    var body: some View {
        
        HStack(spacing: 16) {
            // Play Button
            Button(action: onPlayPause) {
                Image(systemName: "play.circle.fill")
                    .font(.system(size: 40))
                    .foregroundColor(.white)
            }
            
            // Content Section
            VStack(alignment: .leading, spacing: 4) {
                // Title
                Text(contentModel?.podcastName ?? "NA")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .lineLimit(2)
                    .multilineTextAlignment(.leading)
                
                // Subtitle
                Text(contentModel?.description ?? "NA")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .lineLimit(1)
                
                // Duration and Time Info
                HStack(spacing: 12) {
                    // Duration
                    HStack(spacing: 4) {
                        Image(systemName: "clock")
                            .font(.caption2)
                            .foregroundColor(.gray)
                        Text(String(contentModel?.duration ?? 0))
                            .font(.caption)
                            .foregroundColor(.gray)
                    }
                    
                    // Time ago
                    Text("03")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
            }
            
            Spacer()
            
            // Podcast Image
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
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 12)
        .background(
            RoundedRectangle(cornerRadius: 16)
                .fill(Color.gray.opacity(0.15))
        )
        .contentShape(Rectangle())
        
    }
}

#Preview {
    QueueCell(contentModel: ContentModel())
}
