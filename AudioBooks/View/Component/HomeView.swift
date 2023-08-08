//
//  HomeView.swift
//  AudioBooks
//
//  Created by Faiz Azhari Mursid on 08/08/23.
//

import SwiftUI

struct HomeView: View {
    let variable: Binding<String>
    
    var body: some View {
        VStack {
            HStack(alignment: .center, spacing: 84) {
                Text("Reading now")
                    .font(
                        Font.custom("Inter", size: 32)
                            .weight(.semibold)
                    )
                    .foregroundColor(Color(red: 0.11, green: 0.11, blue: 0.11))
                    .padding(.leading, 34)
                
                HStack(alignment: .center, spacing: 10) {
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 38, height: 38)
                        .background(
                            Image("profile")
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: 38, height: 38)
                                .clipped()
                        )
                        .cornerRadius(38)
                        .shadow(color: Color(red: 0.7, green: 0.7, blue: 0.7).opacity(0.15), radius: 2, x: 0, y: 4)
                        .padding(.trailing, 24)
                }
                .padding(4)
                .background(.white)
                .cornerRadius(40)
                .shadow(color: Color(red: 0.7, green: 0.7, blue: 0.7).opacity(0.15), radius: 2, x: 0, y: 4)
            }
            .frame(width: 375, height: 48, alignment: .trailing)
            
            searchBar(variable: variable)
                .padding(.horizontal, 24)
                .padding(.bottom, 18)
            
            ScrollView {
                VStack {
                    LatestRead()
                        .padding(.horizontal, 24)
                        .padding(.bottom, 18)
                    
                    VStack(alignment: .leading, spacing: 8) {
                        titleContainer(title: "Categories", subTitle: "The first story book streaming service for you.")
                        
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack(alignment: .center, spacing: 40) {
                                
                                ForEach(Categories) { category in
                                    categoriesItem(img: category.img, txt: category.txt)
                                }
                            }
                            .padding(4)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        }
                        
                        titleContainer(title: "Free book", subTitle: "Enjoy reading with the world's most high quality digital books.")
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(alignment: .center, spacing: 24) {
                                
                                ForEach(Items) { i in
                                    item(img: i.img, title: i.title, auth: i.auth, rating: i.rating)
                                }
                            }
                            .padding(4)
                        }
                        
                        titleContainer(title: "Popular book for you", subTitle: "Enjoy reading with the world's most high quality digital storybooks")
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(alignment: .center, spacing: 24) {
                                
                                ForEach(Items) { i in
                                    item(img: i.img, title: i.title, auth: i.auth, rating: i.rating)
                                }
                            }
                            .padding(4)
                        }
                    }
                    .padding(0)
                    .frame(width: 323, alignment: .topLeading)
                }
            }
        }
        .padding(.top, 44)
     }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        @State var srch: String = ""
        HomeView(variable: $srch)
    }
}
