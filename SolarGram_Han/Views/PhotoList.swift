//
//  Photos_List.swift
//  SolarGram_Han
//
//  Created by Han Gao on 3/5/23.
//

import SwiftUI

struct PhotoList: View {
    @State var feed: [Post] = PublicPosts.sampleData
    
    var body: some View {
        List($feed) { post in
            PhotoRow(post: post)
                .listRowInsets(EdgeInsets(top: 8, leading: 0, bottom: 8, trailing: 0))
        }
        .listStyle(.plain)
    }
}

struct PhotoList_Previews: PreviewProvider {
    static var previews: some View {
        PhotoList()
    }
}
