//
//  Posts.swift
//  SolarGram_Han
//
//  Created by Han Gao on 3/5/23.
//

import Foundation

struct PublicPosts {
    
    static let currentUser: User = User(name: "Rihango", photoID: "person_1")
            
    static let sampleData: [Post] = [
        Post(photoID: "post_1", description: "Something really great", author: PublicPosts.currentUser),
        Post(photoID: "post_2", description: "Something really great", author: User(name: "Chloe", photoID: "person_2")),
        Post(photoID: "post_3", description: "Something really great", author: PublicPosts.currentUser),
        Post(photoID: "post_4", description: "Something really great", author: PublicPosts.currentUser),
        Post(photoID: "post_5", description: "Something really great", author: PublicPosts.currentUser),
        Post(photoID: "post_6", description: "Something really great", author: PublicPosts.currentUser),
        Post(photoID: "post_7", description: "Something really great", author: PublicPosts.currentUser),
        Post(photoID: "post_8", description: "Something really great", author: PublicPosts.currentUser),
        Post(photoID: "post_9", description: "Something really great", author: PublicPosts.currentUser),

    ]
}
