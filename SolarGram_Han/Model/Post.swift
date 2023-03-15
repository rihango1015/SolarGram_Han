//
//  Post.swift
//  SolarGram_Han
//
//  Created by Han Gao on 3/15/23.
//

import Foundation

struct Post: Identifiable {
    let id: UUID = UUID()
    let photoID: String
    let description: String
    var isFavorite: Bool = false
    let author: User
}
