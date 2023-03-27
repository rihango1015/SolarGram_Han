//
//  Posts.swift
//  SolarGram_Han
//
//  Created by Han Gao on 3/5/23.
//

import Foundation
import SwiftUI

// Define "Public Posts" that link to users and posts, and to manage data directly

struct PublicPosts {
    
    static let currentUser: User = User(userName: "Rihango", photoID: "person_1")
            
    var feed: [Post] = [
        Post(image: Image("post_1"), description: "Squid salad!", author: PublicPosts.currentUser),
        Post(image: Image("post_2"), description: "Any watermelon fans?", author: User(userName: "Chloe0920", photoID: "person_2")),
        Post(image: Image("post_3"), description: "Walnut prawns.", author: PublicPosts.currentUser),
        Post(image: Image("post_4"), description: "Dinner is ready!", author: PublicPosts.currentUser),
        Post(image: Image("post_5"), description: "Roasted chicken and string beans.", author: PublicPosts.currentUser),
        Post(image: Image("post_6"), description: "Scallops.", author: PublicPosts.currentUser),
        Post(image: Image("post_7"), description: "It's a lobster feast.", author: PublicPosts.currentUser),
        Post(image: Image("post_8"), description: "V-day dinner's first course.", author: PublicPosts.currentUser),
        Post(image: Image("post_9"), description: "Waygu steak!", author: PublicPosts.currentUser),

    ]

    mutating func toggleFavorite(_ post: Post) {
        let postInedx = feed.firstIndex { p in
            p.id == post.id
        }
        
        guard let actualIndex = postInedx else { return }
        
        feed[actualIndex].isFavorite.toggle()
    }
    
    mutating func add(_ post: Post) {
        feed.append(post)
    }
    
    //    Need a function that removes a specific post from the sampleData array
    mutating func delete(_ post: Post) {
        let postIndex = feed.firstIndex { p in
            p.id == post.id
        }
        guard let actualIndex = postIndex else { return }
        feed.remove(at: actualIndex)
        
    }
}
