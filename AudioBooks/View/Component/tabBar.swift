//
//  tabBar.swift
//  AudioBooks
//
//  Created by Faiz Azhari Mursid on 08/08/23.
//

import SwiftUI

struct tabBar: View {
    @State private var OnTap: String = "home"
    
    var body: some View {
        VStack {
//            HStack(alignment: .top, spacing: 0) {
//                Partial_TabBar(img: getIcon(OnTap: OnTap, defaultIcon: "home"), txt: "Home")
//                    .onTapGesture {
//                        OnTap = "home"
//                        setAccessView(OnTap: OnTap)
//                    }
//                
//                Partial_TabBar(img: getIcon(OnTap: OnTap, defaultIcon: "bookmark"), txt: "Bookmark")
//                    .onTapGesture {
//                        OnTap = "bookmark"
//                        setAccessView(OnTap: OnTap)
//                    }
//                
//                Partial_TabBar(img: getIcon(OnTap: OnTap, defaultIcon: "headphone"), txt: "Audiobook")
//                    .onTapGesture {
//                        OnTap = "headphone"
//                        setAccessView(OnTap: OnTap)
//                    }
//                
//                Partial_TabBar(img: getIcon(OnTap: OnTap, defaultIcon: "statistic"), txt: "Statistic")
//                    .onTapGesture {
//                        OnTap = "statistic"
//                        setAccessView(OnTap: OnTap)
//                    }
//            }
//            .frame(width: 375, height: 56, alignment: .topLeading)
//            .background(.white)
//            .cornerRadius(20)
//            .padding(.bottom, 55)
        }
        .frame(width: 375, height: 89)
        .shadow(color: Color(red: 0.7, green: 0.7, blue: 0.7).opacity(0.3), radius: 4, x: 0, y: 0)
    }
}

struct tabBar_Previews: PreviewProvider {
    static var previews: some View {
        tabBar()
    }
}
