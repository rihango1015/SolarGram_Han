//
//  PublicPostsViewModel.swift
//  SolarGram_Han
//
//  Created by Han Gao on 3/25/23.
//

import SwiftUI

// Add a View Model that acts as a gatekeeper to the Model

class PublicPostsViewModel: ObservableObject {
    
    // Connect to Model
    
    @Published private var model: PublicPosts = PublicPosts()
    
    // Add vars or functions available to the model
    
    var publicPosts: [Post] {
        model.feed
    }
    
    func setPostFavorite (post: Post) {
        model.toggleFavorite(post)
    }
    
    var currentUserPosts: [Post] {
        return model.feed.filter { post in
            post.author.id == PublicPosts.currentUser.id
        }
    }
    
    func addPostFrom(image: UIImage?) {

        // make sure the optional is an actual image
        guard let image else {return}
        
        // you must do this on main thread for UI to update properly
        DispatchQueue.main.async {
            // create a new post object, it might look like this, but you can adapt as needed in your project.
            let newPost = Post(image: Image(uiImage: image), description: "Something New", isFavorite: false, author: PublicPosts.currentUser)

            // call some function on the model to add the new post to the array of posts, you can do this how you like, but the logic should be in the model
            self.model.add(newPost)
        }
    }
    
    func deletePost (post: Post) {
        model.delete(post)
    }
    
}
