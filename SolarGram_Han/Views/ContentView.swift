//
//  ContentView.swift
//  SolarGram
//
//  Created by Han Gao on 3/2/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection: Tab = .photos
    
    enum Tab {
           case photos
           case profile
       }
    
    var body: some View {
        TabView(selection: $selection) {
            PhotoList()
                .tabItem {
                    Label("Photos", systemImage: "photo.stack")
                }
                .tag(Tab.photos)
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.crop.circle")
                }
                .tag(Tab.profile)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
