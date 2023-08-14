//
//  HomeView.swift
//  AudioBooks
//
//  Created by Faiz Azhari Mursid on 08/08/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack {
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
            .padding(.top, 126)
        }
        .frame(width: 375, height: 812)
        .fixedSize(horizontal: true, vertical: false)
     }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
