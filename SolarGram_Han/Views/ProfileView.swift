//
//  ProfileView.swift
//  SolarGram_Han
//
//  Created by Han Gao on 3/15/23.
//

import SwiftUI

struct ProfileView: View {
        
    @EnvironmentObject var viewModel: PublicPostsViewModel
    
    private let headerHeight: CGFloat = 120
    
    var body: some View {
        VStack {
            headerView
            GridPhotoView(posts: viewModel.currentUserPosts)
        }
    }
    
    var headerView: some View {
        VStack {
            Image(PublicPosts.currentUser.photoID)
                .resizable()
                .frame(width: 100, height: 100)
                .cornerRadius(50)
            Text(PublicPosts.currentUser.userName)
                .font(.title)
        }
        .frame(height: headerHeight)
        .padding()
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView().environmentObject(PublicPostsViewModel())
    }
}

