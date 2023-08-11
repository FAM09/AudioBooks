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
                    TopBar(txt: "My Bookmark")
                    
                    ScrollView {
                        VStack(alignment: .leading) {
                            Text("Dave Grohl: Tales Of Life And Music")
                                .font(
                                    Font.custom("Inter", size: 18)
                                        .weight(.bold)
                                )
                                .foregroundColor(Color(red: 0.11, green: 0.11, blue: 0.11))
                                .multilineTextAlignment(.leading)
                                .padding(.bottom, 8)
                            
                            Text("E. H. Gombrich")
                                .font(
                                    Font.custom("Inter", size: 12)
                                        .weight(.medium)
                                )
                                .foregroundColor(Color(red: 0.46, green: 0.46, blue: 0.46))
                                .padding(.bottom, 12)
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(alignment: .center, spacing: 24) {
                                    ForEach(Items) {_ in
                                        BookmarkCard()
                                    }
                                }
                                .padding(4)
                            }
                            
                            Text("Dave Grohl: Tales Of Life And Music")
                                .font(
                                    Font.custom("Inter", size: 18)
                                        .weight(.bold)
                                )
                                .foregroundColor(Color(red: 0.11, green: 0.11, blue: 0.11))
                                .multilineTextAlignment(.leading)
                                .padding(.bottom, 8)
                            
                            Text("E. H. Gombrich")
                                .font(
                                    Font.custom("Inter", size: 12)
                                        .weight(.medium)
                                )
                                .foregroundColor(Color(red: 0.46, green: 0.46, blue: 0.46))
                                .padding(.bottom, 12)
                            
                            ScrollView(.horizontal, showsIndicators: false) {
                                HStack(alignment: .center, spacing: 24) {
                                    ForEach(Items) {_ in
                                        BookmarkCard()
                                    }
                                }
                                .padding(4)
                            }
                        }
                    }
                    .frame(width: 328, height: 565)
                    .fixedSize()
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
