//
//  GridPhotoView.swift
//  SolarGram_Han
//
//  Created by Han Gao on 3/15/23.
//

import SwiftUI

struct GridPhotoView: View {
    
    var posts: [Post]
    
    var body: some View {
        GeometryReader { geo in
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum:geo.size.width/4))]) {
                    ForEach(posts) { post in
                        SquareImage(Image(post.photoID))
                    }
                }
            }
        }

    }
}

struct GridPhotoView_Previews: PreviewProvider {
    static var previews: some View {
        GridPhotoView(posts: PublicPosts.sampleData)
    }
}



