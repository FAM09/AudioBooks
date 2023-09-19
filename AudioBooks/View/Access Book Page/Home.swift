//
//  Home.swift
//  AudioBooks
//
//  Created by Faiz Azhari Mursid on 05/08/23.
//

import SwiftUI

struct Home: View {
    @State private var search: String = ""
    @State var selectedTab = 0
    @State private var isShowingListeningView = false
    
    var body: some View {
        ZStack {
            VStack(spacing: 0.0) {
                
                if selectedTab == 0 {
                    TopBarHome(variable: $search)
                } else {
                    TopBar(txt: getTitle(tag: selectedTab)!)
                }
                
                TabView (selection: $selectedTab){
                    HomeView()
                        .tabItem {
                            Partial_TabBar(img: Image(systemName: "house"), txt: "Home")
                        }
                        .tag(0)
                    
                    BookmarkView()
                        .tabItem {
                            Partial_TabBar(img: Image(systemName: "bookmark"), txt: "Bookmark")
                        }
                        .tag(1)
                    
                    AudioBook()
                        .tabItem {
                            Partial_TabBar(img: Image(systemName: "headphones"), txt: "AudioBook")
                        }
                        .tag(2)
                    
                    StatisticView()
                        .tabItem {
                            Partial_TabBar(img: Image(systemName: "chart.bar.xaxis"), txt: "Statistic")
                        }
                        .tag(3)
                }
                .accentColor(.blue)
            }
            .frame(width: 375, height: 812)
            .background(.white)
            .cornerRadius(16)
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
