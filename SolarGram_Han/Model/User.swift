//
//  User.swift
//  SolarGram_Han
//
//  Created by Han Gao on 3/15/23.
//

import Foundation

struct User: Identifiable {
    let id: UUID = UUID()
    let name: String
    let photoID: String
}
