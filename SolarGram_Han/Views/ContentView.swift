//
//  ContentView.swift
//  SolarGram
//
//  Created by Han Gao on 3/2/23.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var viewModel: PublicPostsViewModel
    
    @State private var selection: Tab = .photos
    @State private var showCameraPicker = false
    @State private var showImagePicker = false
    
    enum Tab {
        case photos
        case profile
    }
    
    var body: some View {
        
        VStack{
            
            // Add an HStack that includes a "SolarGram" title, "Camera", and "Image" icons, mimicking Instagram's layout
            
            HStack{
                Text("SolarGram")
                    .font(Font.custom("American Typewriter", size: 24))
                    .fontWeight(.bold)
                Spacer()
                Button {
                    self.showCameraPicker = true
                } label: {
                    Image(systemName: "camera")
                }
                .sheet(isPresented: $showCameraPicker) {
                    CameraPicker(viewModel: viewModel)
                }
                .padding(.horizontal, 10)
                Button {
                    self.showImagePicker = true
                } label: {
                    Image(systemName: "photo")
                }
                .sheet(isPresented: $showImagePicker) {
                    ImagePicker(viewModel: viewModel)
                    
                }
            }
            .padding(.horizontal, 10)
            
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
                .environmentObject(PublicPostsViewModel())
        }
    }
}
