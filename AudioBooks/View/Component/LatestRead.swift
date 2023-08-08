//
//  LatestRead.swift
//  AudioBooks
//
//  Created by Faiz Azhari Mursid on 08/08/23.
//

import SwiftUI

struct LatestRead: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Latest read")
                .font(
                    Font.custom("Inter", size: 16)
                        .weight(.medium)
                )
                .foregroundColor(Color(red: 0.11, green: 0.11, blue: 0.11))
            
            HStack(alignment: .center, spacing: 8) {
                HStack(alignment: .center, spacing: 0) {
                    VStack(alignment: .center, spacing: 12) {
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 102, height: 160)
                            .background(
                                Image("Rectangle 37")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 102, height: 160)
                                    .clipped()
                            )
                            .cornerRadius(8)
                    }
                    .padding(4)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                }
                .frame(minWidth: 110, maxWidth: 110, maxHeight: .infinity, alignment: .center)
                .background(.white)
                .cornerRadius(10)
                .shadow(color: Color(red: 0.7, green: 0.7, blue: 0.7).opacity(0.15), radius: 2, x: 0, y: 4)
                .padding(.leading, 8)
                .padding(.vertical, 12)
                
                VStack(alignment: .leading, spacing: 8) {
                    Text("Dave Grohl: Tales Of Life And Music")
                      .font(
                        Font.custom("Inter", size: 14)
                          .weight(.bold)
                      )
                      .foregroundColor(Color(red: 0.11, green: 0.11, blue: 0.11))
                      .frame(maxWidth: .infinity, alignment: .leading)
                      .padding(.bottom, 8)
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("E. H. Gombrich")
                          .font(Font.custom("Inter", size: 14))
                          .foregroundColor(Color(red: 0.46, green: 0.46, blue: 0.46))
                          .frame(maxWidth: .infinity, alignment: .leading)
                          .padding(.bottom, 8)
                        
                        Text("Chapter 2 : Music, passion and idealism")
                          .font(Font.custom("Inter", size: 12))
                          .foregroundColor(Color(red: 0.11, green: 0.11, blue: 0.11))
                          .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                          .padding(.bottom, 7)
                        
                        HStack(alignment: .center, spacing: 5) {
                            ProgressView(value: 0.6)
                                .frame(maxWidth: .infinity, minHeight: 8, maxHeight: 8)
                                ._colorMonochrome(Color(red: 0.51, green: 0.22, blue: 0.84))
                            
                            Text("60%")
                              .font(Font.custom("Inter", size: 12))
                              .multilineTextAlignment(.center)
                              .foregroundColor(Color(red: 0.46, green: 0.46, blue: 0.46))
                        }
                        .padding(0)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                        
                        
                    }
                    .padding(0)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                }
                .padding(0)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                .padding(.leading, 8)
                .padding(.vertical, 12)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            .background(Color(red: 0.95, green: 0.95, blue: 0.95))
            .cornerRadius(8)
            .shadow(color: Color(red: 0.7, green: 0.7, blue: 0.7).opacity(0.15), radius: 2, x: 0, y: 4)
            .padding(.bottom, 8)
        }
        .frame(width: 327, height: 224, alignment: .leading)
    }
}

struct LatestRead_Previews: PreviewProvider {
    static var previews: some View {
        LatestRead()
    }
}
