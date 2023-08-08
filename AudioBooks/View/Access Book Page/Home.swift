//
//  Home.swift
//  AudioBooks
//
//  Created by Faiz Azhari Mursid on 05/08/23.
//

import SwiftUI

struct Home: View {
    @State private var search: String = ""
    
    var body: some View {
        ZStack {
            VStack {
                VStack {
                    Text("Reading now")
                        .font(
                            Font.custom("Inter", size: 32)
                                .weight(.semibold)
                        )
                        .foregroundColor(Color(red: 0.11, green: 0.11, blue: 0.11))
                        .padding(.bottom, 18)
                        .padding(.leading, 24)
                        .padding(.trailing, 141)
                    
                    ZStack {
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 327, height: 36)
                            .background(Color(red: 0.95, green: 0.95, blue: 0.95))
                            .cornerRadius(8)
                        
                        Image("Icon")
                            .frame(width: 16, height: 16)
                            .padding(.leading, 303)
                            .padding(.trailing, 8)
                            .padding(.vertical, 10)
                        
                        TextField("Search", text: $search)
                            .font(Font.custom("Inter", size: 16))
                            .foregroundColor(Color(red: 0.73, green: 0.73, blue: 0.73))
                            .frame(width: 259, height: 16, alignment: .topLeading)
                        
                        Image("Mic")
                            .frame(width: 16, height: 16)
                            .padding(.leading, 8)
                            .padding(.trailing, 303)
                            .padding(.vertical, 10)
                    }
                    .frame(width: 327, height: 36)
                    .cornerRadius(8)
                    .shadow(color: Color(red: 0.7, green: 0.7, blue: 0.7).opacity(0.15), radius: 2, x: 0, y: 4)
                    .padding(.horizontal, 24)
                    .padding(.bottom, 18)
                }
                .padding(.top, 44)
                
                ScrollView {
                    LatestRead()
                        .padding(.horizontal, 24)
                        .padding(.bottom, 18)
                    
                    VStack(alignment: .leading, spacing: 8) {
                        titleContainer(title: "Categories", subTitle: "The first story book streaming service for you.")
                        
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack(alignment: .center, spacing: 40) {
                                categoriesItem(img: "novel", txt: "Novel")
                                
                                categoriesItem(img: "science", txt: "Science")
                                
                                categoriesItem(img: "comics", txt: "Comic")
                                
                                categoriesItem(img: "story", txt: "Old Story")
                                
                                categoriesItem(img: "health", txt: "Health")
                                
                                categoriesItem(img: "psychology", txt: "Psychology")
                                
                                categoriesItem(img: "biography", txt: "Biography")
                            }
                            .padding(4)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        }
                        
                        titleContainer(title: "Free book", subTitle: "Enjoy reading with the world's most high quality digital books.")
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(alignment: .center, spacing: 24) {
                                item(img: "book1", title: "The Tales Of Beedle The Bard", auth: "J.K Rowling", rating: "5.6")
                                
                                item(img: "book1", title: "The Tales Of Beedle The Bard", auth: "J.K Rowling", rating: "5.6")
                                
                                item(img: "book1", title: "The Tales Of Beedle The Bard", auth: "J.K Rowling", rating: "5.6")
                                
                                item(img: "book1", title: "The Tales Of Beedle The Bard", auth: "J.K Rowling", rating: "5.6")
                                
                                item(img: "book1", title: "The Tales Of Beedle The Bard", auth: "J.K Rowling", rating: "5.6")
                            }
                            .padding(4)
                        }
                        
                        titleContainer(title: "Popular book for you", subTitle: "Enjoy reading with the world's most high quality digital storybooks")
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(alignment: .center, spacing: 24) {
                                item(img: "book1", title: "The Tales Of Beedle The Bard", auth: "J.K Rowling", rating: "5.6")
                                
                                item(img: "book1", title: "The Tales Of Beedle The Bard", auth: "J.K Rowling", rating: "5.6")
                                
                                item(img: "book1", title: "The Tales Of Beedle The Bard", auth: "J.K Rowling", rating: "5.6")
                                
                                item(img: "book1", title: "The Tales Of Beedle The Bard", auth: "J.K Rowling", rating: "5.6")
                                
                                item(img: "book1", title: "The Tales Of Beedle The Bard", auth: "J.K Rowling", rating: "5.6")
                            }
                            .padding(4)
                            
                        }
                    }
                    .padding(0)
                    .frame(width: 323, alignment: .topLeading)
                }
                tabBar()
            }
        }
        .frame(width: 375, height: 812)
        .background(.white)
        .cornerRadius(16)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
