//
//  CardSmall.swift
//  AudioBooks
//
//  Created by Faiz Azhari Mursid on 11/08/23.
//

import SwiftUI

struct CardSmall: View {
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            HStack(alignment: .center, spacing: 14) {
                VStack(alignment: .center, spacing: 4) {
                    Text("Chapter 1")
                        .font(
                            Font.custom("Inter", size: 12)
                                .weight(.bold)
                        )
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                    
                    HStack(alignment: .center, spacing: 0) {
                        Image("Group 18")
                            .frame(width: 14.00015, height: 22.75018)
                    }
                    .padding(0)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                    
                    Text("30:20")
                        .font(
                            Font.custom("Inter", size: 12)
                                .weight(.bold)
                        )
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                }
                .padding(4)
                .frame(minWidth: 84, maxWidth: 84, maxHeight: .infinity, alignment: .center)
                .background(Color(red: 0.77, green: 0.47, blue: 0.99))
                .cornerRadius(10)
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("Chapter 1 : Music, passion and idealism")
                        .font(Font.custom("Inter", size: 14))
                        .foregroundColor(Color(red: 0.46, green: 0.46, blue: 0.46))
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                    
                    HStack(alignment: .center, spacing: 5) {
                        ProgressView(value: 1)
                            .frame(maxWidth: .infinity, minHeight: 8, maxHeight: 8)
                            ._colorMonochrome(Color(red: 0.51, green: 0.22, blue: 0.84))
                        
                        Text("100%")
                            .font(Font.custom("Inter", size: 12))
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color(red: 0.46, green: 0.46, blue: 0.46))
                    }
                    .padding(0)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                }
                .padding(0)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                
                HStack(alignment: .center, spacing: 8) {
                    HStack(alignment: .center, spacing: 0) {
                        Image("play-circle")
                        .frame(width: 32, height: 32)
                    }
                    .padding(.leading, 6)
                    .padding(.trailing, 4)
                    .padding(.vertical, 0)
                    .frame(width: 36, height: 36, alignment: .center)
                    .cornerRadius(30)
                    .shadow(color: Color(red: 0.7, green: 0.7, blue: 0.7).opacity(0.15), radius: 2, x: 0, y: 4)
                }
                .padding(0)
                .frame(maxHeight: .infinity, alignment: .center)
            }
            .padding(0)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
        }
        .padding(.horizontal, 8)
        .padding(.vertical, 12)
        .frame(width: 327, height: 103, alignment: .center)
        .background(.white)
        .cornerRadius(8)
        .shadow(color: Color(red: 0.7, green: 0.7, blue: 0.7).opacity(0.3), radius: 4, x: 0, y: 0)
        
    }
}

struct CardSmall_Previews: PreviewProvider {
    static var previews: some View {
        CardSmall()
    }
}
