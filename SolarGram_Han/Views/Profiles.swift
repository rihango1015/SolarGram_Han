//
//  Profiles.swift
//  SolarGram
//
//  Created by Han Gao on 3/2/23.
//

import SwiftUI

struct Profiles: View {
    var body: some View {
        ZStack {
            Color.black
            Image(systemName: "person.crop.circle.fill")
                .foregroundColor(Color.white)
                .font(.system(size: 100))
            
        }
    }
}

struct Profiles_Previews: PreviewProvider {
    static var previews: some View {
        Profiles()
    }
}
