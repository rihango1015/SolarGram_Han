//
//  Photos.swift
//  SolarGram
//
//  Created by Han Gao on 3/2/23.
//

import SwiftUI

struct Photos: View {
    var body: some View {
        ZStack {
            Color.black
            Image(systemName: "photo.fill")
                .foregroundColor(Color.white)
                .font(.system(size: 100))
            
        }
    }
}

struct Photos_Previews: PreviewProvider {
    static var previews: some View {
        Photos()
    }
}
