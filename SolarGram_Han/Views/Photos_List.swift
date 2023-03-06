//
//  Photos_List.swift
//  SolarGram_Han
//
//  Created by Han Gao on 3/5/23.
//

import SwiftUI

struct Photos_List: View {
    
    @State private var isLiked = false
    
    var post: [Posts] = PostList.topNine
    
    var body: some View {
        VStack {
            List(post, id: \.self) { post in
                HStack {
                    // Add profile pic for person 1
                    Image(post.profileImage)
                        .resizable()
                        .frame(width: 40, height: 40)
                        .cornerRadius(40)
                        .overlay(
                            Circle().stroke(Color.gray, lineWidth: 0.2)
                        )
                    
                    // Add person 1's name
                    Text(post.profileName)
                    
                    // Add a spacer to push it to the left
                    Spacer()
                    
                    // Add the "more" icon
                    Image(systemName: "ellipsis")
                }
                .padding(.vertical, 12)
                .padding(.horizontal, 10)
                
                VStack (alignment: .leading, spacing: 6) {
                    Image(post.postImage)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 300, height: 300, alignment: .center)
                                .clipped()
                    
                    Text(post.description)
                        .padding(.horizontal, 10)
                    
                    HStack {
                        HStack{
                            Button {
                                self.isLiked.toggle()
                            } label: {
                                Image(systemName: isLiked ? "heart.fill" : "heart")
                            }
                            
                        }
                        
                        Spacer()
                    }
                    .font(.system(size: 20))
                    .padding(.horizontal, 10)
                    .padding(.vertical, 8)
                }
            }
        }
        .navigationTitle("Top 9 Posts")
    }
}

struct Photos_List_Previews: PreviewProvider {
    static var previews: some View {
        Photos_List()
    }
}
