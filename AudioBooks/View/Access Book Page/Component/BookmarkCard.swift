//
//  BookmarkCard.swift
//  AudioBooks
//
//  Created by Faiz Azhari Mursid on 11/08/23.
//

import SwiftUI

struct BookmarkCard: View {
    var body: some View {
        VStack(alignment: .center, spacing: 4) {
            Text("Chapter 1")
              .font(
                Font.custom("Inter", size: 24)
                  .weight(.semibold)
              )
              .multilineTextAlignment(.center)
              .foregroundColor(.white)
              .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            
            HStack(alignment: .center, spacing: 0) {
                Image("Group8")
                .frame(width: 64, height: 45.50035)
            }
            .padding(0)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            
            Text("30:20")
              .font(
                Font.custom("Inter", size: 24)
                  .weight(.semibold)
              )
              .multilineTextAlignment(.center)
              .foregroundColor(.white)
              .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        }
        .padding(4)
        .frame(width: 152, height: 212, alignment: .center)
        .background(Color(red: 0.77, green: 0.77, blue: 0.77).opacity(0.4))
        .background(
          Image("cover")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 152, height: 212)
            .clipped()
        )
        .cornerRadius(10)
        .shadow(color: Color(red: 0.7, green: 0.7, blue: 0.7).opacity(0.15), radius: 2, x: 0, y: 4)
    }
}

struct BookmarkCard_Previews: PreviewProvider {
    static var previews: some View {
        BookmarkCard()
    }
}
