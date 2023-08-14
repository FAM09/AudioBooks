//
//  item.swift
//  AudioBooks
//
//  Created by Faiz Azhari Mursid on 08/08/23.
//

import SwiftUI

struct item: View {
    let img: String
    let title: String
    let auth: String
    let rating: String
    
    var body: some View {
        HStack(alignment: .center, spacing: 0) {
            VStack(alignment: .center, spacing: 12) {
                HStack(alignment: .center, spacing: 0) {
                    Rectangle()
                      .foregroundColor(.clear)
                      .frame(width: 143, height: 124)
                      .background(
                        Image(img)
                          .resizable()
                          .aspectRatio(contentMode: .fill)
                          .frame(width: 143, height: 124)
                          .clipped()
                      )
                      .cornerRadius(8)
                }
                .padding(0)
                .frame(maxWidth: .infinity, minHeight: 124, maxHeight: 124, alignment: .center)
                
                VStack(alignment: .center, spacing: 8) {
                    HStack(alignment: .center, spacing: 10) {
                        Text(title)
                          .font(
                            Font.custom("Inter", size: 12)
                              .weight(.bold)
                          )
                          .foregroundColor(Color(red: 0.11, green: 0.11, blue: 0.11))
                          .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    .frame(width: 143.0, height: 32)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                    .padding(.bottom, 4)
                    
                    HStack(alignment: .top, spacing: 0) {
                        HStack(alignment: .center, spacing: 0) {
                            Text(auth)
                              .font(Font.custom("Inter", size: 12))
                              .foregroundColor(Color(red: 0.46, green: 0.46, blue: 0.46))
                              .frame(width: 85, height: 14, alignment: .leading)
                        }
                        .padding(.leading, 0)
                        .padding(.trailing, 22)
                        .padding(.vertical, 5)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                        
                        HStack(alignment: .center, spacing: 4) {
                            Image("Star")
                            .frame(width: 14, height: 14)
                            
                            Text(rating)
                              .font(Font.custom("Inter", size: 12))
                              .foregroundColor(.black)
                        }
                        .padding(0)
                        .frame(maxHeight: .infinity, alignment: .center)
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                    .padding(.bottom, 8)
                    .frame(width: 143, height: 14.0)
                    
                }
                .padding(0)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            }
            .padding(0)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        }
        .padding(4)
        .frame(width: 151, height: 200, alignment: .center)
        .background(.white)
        .cornerRadius(10)
        .shadow(color: Color(red: 0.7, green: 0.7, blue: 0.7).opacity(0.15), radius: 2, x: 0, y: 4)
    }
}

struct item_Previews: PreviewProvider {
    static var previews: some View {
        item(img: "book1", title: "The Tales Of Beedle The Bard", auth: "J.K Rowling", rating: "5.6")
    }
}
