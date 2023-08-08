//
//  tabBar.swift
//  AudioBooks
//
//  Created by Faiz Azhari Mursid on 08/08/23.
//

import SwiftUI

struct tabBar: View {
    var body: some View {
        VStack {
            HStack(alignment: .top, spacing: 0) {
                VStack(alignment: .center, spacing: 4) {
                    Image("home")
                    .frame(width: 24, height: 24)
                    
                    Text("Home")
                      .font(Font.custom("Inter", size: 12))
                      .multilineTextAlignment(.center)
                      .foregroundColor(Color(red: 0.38, green: 0.15, blue: 0.71))
                      .frame(width: 94, height: 12, alignment: .top)
                }
                .padding(.horizontal, 0)
                .padding(.vertical, 8)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                
                VStack(alignment: .center, spacing: 4) {
                    Image("bookmark")
                    .frame(width: 24, height: 24)
                    
                    Text("Bookmark")
                      .font(Font.custom("Inter", size: 12))
                      .multilineTextAlignment(.center)
                      .foregroundColor(Color(red: 0.11, green: 0.11, blue: 0.11))
                      .frame(width: 94, alignment: .top)
                }
                .padding(.horizontal, 0)
                .padding(.vertical, 8)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                
                VStack(alignment: .center, spacing: 4) {
                    Image("headphone")
                    .frame(width: 24, height: 24)
                    
                    Text("Audiobook")
                      .font(Font.custom("Inter", size: 12))
                      .multilineTextAlignment(.center)
                      .foregroundColor(Color(red: 0.11, green: 0.11, blue: 0.11))
                      .frame(width: 94, alignment: .top)
                }
                .padding(.horizontal, 0)
                .padding(.vertical, 8)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                
                VStack(alignment: .center, spacing: 4) {
                    Image("statistic")
                    .frame(width: 24, height: 24)
                    
                    Text("Statistik")
                      .font(Font.custom("Inter", size: 12))
                      .multilineTextAlignment(.center)
                      .foregroundColor(Color(red: 0.11, green: 0.11, blue: 0.11))
                      .frame(width: 94, alignment: .top)
                }
                .padding(.horizontal, 0)
                .padding(.vertical, 8)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            }
            .frame(width: 375, height: 56, alignment: .topLeading)
            .background(.white)
            .cornerRadius(20)
            .padding(.bottom, 55)
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
