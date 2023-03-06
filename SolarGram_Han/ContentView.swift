//
//  ContentView.swift
//  SolarGram
//
//  Created by Han Gao on 3/2/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        // Add "Photos" and "Profiles" as TabViews
        
        TabView {
            Photos_Row()
                .tabItem() {
                    Image(systemName: "photo.fill")
                    Text("Photos")
                }
            Profiles()
                .tabItem() {
                    Image(systemName: "person.crop.circle.fill")
                    Text("Photos")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
