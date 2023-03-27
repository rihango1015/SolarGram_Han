//
//  SolarGram_HanApp.swift
//  SolarGram_Han
//
//  Created by Han Gao on 3/2/23.
//

import SwiftUI

@main
struct SolarGram_HanApp: App {
    
    @StateObject var viewModel = PublicPostsViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(PublicPostsViewModel())
        }
    }
}
