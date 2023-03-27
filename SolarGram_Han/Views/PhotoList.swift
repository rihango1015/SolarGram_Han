//
//  Photos_List.swift
//  SolarGram_Han
//
//  Created by Han Gao on 3/5/23.
//

import SwiftUI

struct PhotoList: View {
    
    @EnvironmentObject var viewModel: PublicPostsViewModel
    
    var body: some View {
        List(viewModel.publicPosts) { post in
            PhotoRow(post: post)
                .listRowInsets(EdgeInsets(top: 8, leading: 0, bottom: 8, trailing: 0))
        }
        .listStyle(.plain)
    }
}

struct PhotoList_Previews: PreviewProvider {
    static var previews: some View {
        PhotoList()
            .environmentObject(PublicPostsViewModel())
    }
}
