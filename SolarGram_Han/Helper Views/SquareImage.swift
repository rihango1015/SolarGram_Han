//
//  SquareImage.swift
//  SolarGram_Han
//
//  Created by Han Gao on 3/15/23.
//

import SwiftUI

struct SquareImage: View {
    
    var image: Image
    
    init(_ image: Image) {
        self.image = image
    }
    
    var body: some View {
        Rectangle()
            .aspectRatio(1, contentMode: .fit)
            .overlay {
                image
                    .resizable()
                    .scaledToFill()
            }
            .clipped()
    }
}

struct SquareImage_Previews: PreviewProvider {
    static var previews: some View {
        SquareImage(Image("post_1"))
    }
}
