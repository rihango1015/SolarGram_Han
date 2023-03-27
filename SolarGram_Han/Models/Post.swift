//
//  Post.swift
//  SolarGram_Han
//
//  Created by Han Gao on 3/5/23.
//

import Foundation
import SwiftUI

// Define "Post" that holds information about a post, and links to a User

struct Post: Identifiable {
    let id: UUID = UUID()
    let image: Image
    let description: String
    var isFavorite: Bool = false
    let author: User
}
