//
//  User.swift
//  SolarGram_Han
//
//  Created by Han Gao on 3/5/23.
//

import Foundation

// Define "User" that holds information about a user

struct User: Identifiable, Equatable {
    let id: UUID = UUID()
    let userName: String
    let photoID: String
}
