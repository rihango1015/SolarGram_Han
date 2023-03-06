//
//  Posts.swift
//  SolarGram_Han
//
//  Created by Han Gao on 3/5/23.
//

import SwiftUI

struct Posts: Identifiable, Hashable {
    let id = UUID()
    let profileImage: String
    let profileName: String
    let postImage: String
    let description: String
}

struct PostList {
    
    static let topNine = [
        Posts(profileImage: "person_1", profileName: "Rihango", postImage: "post_1", description: "111"),
        
        Posts(profileImage: "person_2", profileName: "Rihango", postImage: "post_2", description: "222"),
        
        Posts(profileImage: "person_1", profileName: "Rihango", postImage: "post_3", description: "333"),
        
        Posts(profileImage: "person_1", profileName: "Rihango", postImage: "post_4", description: "444"),
        
        Posts(profileImage: "person_1", profileName: "Rihango", postImage: "post_5", description: "555"),
        
        Posts(profileImage: "person_1", profileName: "Rihango", postImage: "post_6", description: "666"),
        
        Posts(profileImage: "person_1", profileName: "Rihango", postImage: "post_7", description: "777"),
        
        Posts(profileImage: "person_1", profileName: "Rihango", postImage: "post_8", description: "888"),
        
        Posts(profileImage: "person_1", profileName: "Rihango", postImage: "post_9", description: "999"),
        
    ]
}
