//
//  Photos_Row.swift
//  SolarGram
//
//  Created by Han Gao on 3/2/23.
//

import SwiftUI

struct Photos_Row : View {
    
    @State private var isLiked = false
    
    var body: some View {
        
        ScrollView {
            VStack {

                // Create a post header
                PostRow()
                
                Group {
                    HStack {
                        
                        // Add profile pic for person 1
                        Image("person_2")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .cornerRadius(40)
                            .overlay(
                                Circle().stroke(Color.gray, lineWidth: 0.2)
                            )
                        
                        // Add person 1's name
                        Text("Faye0920")
                        
                        // Add a spacer to push it to the left
                        Spacer()
                        
                        // Add the "more" icon
                        Image(systemName: "ellipsis")
                    }
                    .padding(.vertical, 12)
                    .padding(.horizontal, 10)
                }
                
                // Create a post
                VStack (alignment: .leading, spacing: 6) {
                    Image("post_2")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 400, height: 400, alignment: .center)
                                .clipped()
                    
                    Text("We love watermelons!")
                        .padding(.horizontal, 10)
                    
                    HStack {
                        HStack{
                            Button {
                                self.isLiked.toggle()
                            } label: {
                                Image(systemName: isLiked ? "heart.fill" : "heart")
                            }
                            
                        }
                        
                        Spacer()
                    }
                    .font(.system(size: 20))
                    .padding(.horizontal, 10)
                    .padding(.vertical, 8)
                }
                
                Group {
                    HStack {
                        
                        // Add profile pic for person 1
                        Image("person_1")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .cornerRadius(40)
                            .overlay(
                                Circle().stroke(Color.gray, lineWidth: 0.2)
                            )
                        
                        // Add person 1's name
                        Text("Rihango")
                        
                        // Add a spacer to push it to the left
                        Spacer()
                        
                        // Add the "more" icon
                        Image(systemName: "ellipsis")
                    }
                    .padding(.vertical, 12)
                    .padding(.horizontal, 10)
                }
                
                // Create a post
                VStack (alignment: .leading, spacing: 6) {
                    Image("post_3")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 400, height: 400, alignment: .center)
                                .clipped()
                    
                    Text("Walnut shrimps.")
                        .padding(.horizontal, 10)
                    
                    HStack {
                        HStack{
                            Button {
                                self.isLiked.toggle()
                            } label: {
                                Image(systemName: isLiked ? "heart.fill" : "heart")
                            }
                            
                        }
                        
                        Spacer()
                    }
                    .font(.system(size: 20))
                    .padding(.horizontal, 10)
                    .padding(.vertical, 8)
                }
                
                Group {
                    HStack {
                        
                        // Add profile pic for person 1
                        Image("person_1")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .cornerRadius(40)
                            .overlay(
                                Circle().stroke(Color.gray, lineWidth: 0.2)
                            )
                        
                        // Add person 1's name
                        Text("Rihango")
                        
                        // Add a spacer to push it to the left
                        Spacer()
                        
                        // Add the "more" icon
                        Image(systemName: "ellipsis")
                    }
                    .padding(.vertical, 12)
                    .padding(.horizontal, 10)
                }
                
                // Create a post
                VStack (alignment: .leading, spacing: 6) {
                    Image("post_4")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 400, height: 400, alignment: .center)
                                .clipped()
                    
                    Text("Dinner is ready!")
                        .padding(.horizontal, 10)
                    
                    HStack {
                        HStack{
                            Button {
                                self.isLiked.toggle()
                            } label: {
                                Image(systemName: isLiked ? "heart.fill" : "heart")
                            }
                            
                        }
                        
                        Spacer()
                    }
                    .font(.system(size: 20))
                    .padding(.horizontal, 10)
                    .padding(.vertical, 8)
                }
                
                Group {
                    HStack {
                        
                        // Add profile pic for person 1
                        Image("person_1")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .cornerRadius(40)
                            .overlay(
                                Circle().stroke(Color.gray, lineWidth: 0.2)
                            )
                        
                        // Add person 1's name
                        Text("Rihango")
                        
                        // Add a spacer to push it to the left
                        Spacer()
                        
                        // Add the "more" icon
                        Image(systemName: "ellipsis")
                    }
                    .padding(.vertical, 12)
                    .padding(.horizontal, 10)
                }
                
                // Create a post
                VStack (alignment: .leading, spacing: 6) {
                    Image("post_5")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 400, height: 400, alignment: .center)
                                .clipped()
                    
                    Text("Roasted chicken with green beans and mashed potatoes.")
                        .padding(.horizontal, 10)
                    
                    HStack {
                        HStack{
                            Button {
                                self.isLiked.toggle()
                            } label: {
                                Image(systemName: isLiked ? "heart.fill" : "heart")
                            }
                            
                        }
                        
                        Spacer()
                    }
                    .font(.system(size: 20))
                    .padding(.horizontal, 10)
                    .padding(.vertical, 8)
                }
            }
        }
    }
}

struct Photos_Row_Previews: PreviewProvider {
    static var previews: some View {
        Photos_Row()
    }
}

struct PostRow: View {
    
    @State private var isLiked = false
    
    var body: some View {
        Group {
            HStack {
                
                // Add profile pic for person 1
                Image("person_1")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .cornerRadius(40)
                    .overlay(
                        Circle().stroke(Color.gray, lineWidth: 0.2)
                    )
                
                // Add person 1's name
                Text("Rihango")
                
                // Add a spacer to push it to the left
                Spacer()
                
                // Add the "more" icon
                Image(systemName: "ellipsis")
            }
            .padding(.vertical, 12)
            .padding(.horizontal, 10)
            // Create a post
            VStack (alignment: .leading, spacing: 6) {
                Image("post_1")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 400, height: 400, alignment: .center)
                            .clipped()
                
                Text("Squid salad!")
                    .padding(.horizontal, 10)
                
                HStack {
                    HStack{
                        Button {
                            self.isLiked.toggle()
                        } label: {
                            Image(systemName: isLiked ? "heart.fill" : "heart")
                        }
                        
                    }
                    
                    Spacer()
                }
                .font(.system(size: 20))
                .padding(.horizontal, 10)
                .padding(.vertical, 8)
            }
        }
    }
}
