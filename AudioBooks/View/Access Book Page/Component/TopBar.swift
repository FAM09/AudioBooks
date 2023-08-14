//
//  TopBar.swift
//  AudioBooks
//
//  Created by Faiz Azhari Mursid on 11/08/23.
//

import SwiftUI

struct TopBar: View {
    let txt: String
    
    var body: some View {
        HStack(spacing: 82) {
            Image("Left Actionable")
                .frame(width: 24, height: 24)
            
            Text(txt)
                .font(Font.custom("Inter", size: 18))
                .multilineTextAlignment(.center)
                .foregroundColor(Color(red: 0.04, green: 0.04, blue: 0.04))
                .frame(width: 111, height: 18.0)
            
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
            }
            .padding(4)
            .background(.white)
            .cornerRadius(40)
            .shadow(color: Color(red: 0.7, green: 0.7, blue: 0.7).opacity(0.15), radius: 2, x: 0, y: 4)
        }
        .frame(width: 375, height: 48)
        .padding(.top, 44)
    }
}

struct TopBar_Previews: PreviewProvider {
    static var previews: some View {
        TopBar(txt: "My Bookmark")
    }
}
