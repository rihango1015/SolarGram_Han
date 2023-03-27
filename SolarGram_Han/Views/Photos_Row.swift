//
//  Photos_Row.swift
//  SolarGram
//
//  Created by Han Gao on 3/2/23.
//

import SwiftUI

struct PhotoRow: View {
    
    private let authorImageHeight: CGFloat = 30
    
    var post: Post
    
    @EnvironmentObject var viewModel: PublicPostsViewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            authorView
            SquareImage(post.image)
            descriptionView
            actionView
            #if os(macOS)
            Divider()
                .padding(.vertical)
            #endif
        }
    }
    
    var authorView: some View {
        HStack {
            SquareImage(Image(post.author.photoID))
                .frame(height: authorImageHeight)
                .clipShape(Circle())
            Text(post.author.userName)
                .font(.headline)
        }
        .padding(.leading, 8)
    }
    
    var actionView: some View {
        HStack {
            Button {
                viewModel.setPostFavorite(post: post)
            } label: {
                if post.isFavorite {
                    Image(systemName: "heart.fill")
                } else {
                    Image(systemName: "heart")
                }
            }
        }
        .padding(.leading, 8)
    }
    
    var descriptionView: some View {
        Text(post.description)
            .font(.caption)
            .padding(.leading, 8)
            .padding(.bottom, 8)

    }
}

struct PhotoRow_Previews: PreviewProvider {
    static var previews: some View {
        PhotoRow(post: PublicPostsViewModel().publicPosts[0])
            .environmentObject(PublicPostsViewModel())
    }
}
