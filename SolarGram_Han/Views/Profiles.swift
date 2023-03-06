//
//  Profiles.swift
//  SolarGram
//
//  Created by Han Gao on 3/2/23.
//

import SwiftUI

struct Profiles: View {
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 3, alignment: nil),
        GridItem(.flexible(), spacing: 3, alignment: nil),
        GridItem(.flexible(), spacing: 3, alignment: nil),
    ]
    
    var body: some View {
        
    ScrollView {
        VStack {
            Image("person_1")
                .resizable()
                .frame(width: 80, height: 80)
                .cornerRadius(80)
                .overlay(
                Circle().stroke(Color.gray, lineWidth: 0.2)
                    )
                Text("Rihango")
                
                LazyVGrid(
                    columns: columns,
                    alignment: .center,
                    spacing: 1,
                    pinnedViews: [],
                    content: {
                        ForEach(0..<9) {
                            index in Rectangle()
                                .frame(height: 120)
                        }
                })
            }
        }
    }
}

struct Profiles_Previews: PreviewProvider {
    static var previews: some View {
        Profiles()
    }
}
