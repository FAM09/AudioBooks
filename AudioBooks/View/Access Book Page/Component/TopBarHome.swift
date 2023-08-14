//
//  TopBarHome.swift
//  AudioBooks
//
//  Created by Faiz Azhari Mursid on 14/08/23.
//

import SwiftUI

struct TopBarHome: View {
    let variable: Binding<String>
    
    var body: some View {
        VStack {
            HStack(alignment: .center, spacing: 84) {
                Text("Reading now")
                    .font(
                        Font.custom("Inter", size: 32)
                            .weight(.semibold)
                    )
                    .foregroundColor(Color(red: 0.11, green: 0.11, blue: 0.11))
                    .padding(.leading, 34)
                
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
                        .padding(.trailing, 15)
                }
                .padding(4)
                .background(.white)
                .cornerRadius(40)
                .shadow(color: Color(red: 0.7, green: 0.7, blue: 0.7).opacity(0.15), radius: 2, x: 0, y: 4)
            }
            .frame(width: 375, height: 48, alignment: .trailing)
            
            searchBar(variable: variable)
                .padding(.horizontal, 24)
        }
        .padding(.top, 44)
    }
}

struct TopBarHome_Previews: PreviewProvider {
    static var previews: some View {
        @State var srch: String = ""
        
        TopBarHome(variable: $srch)
    }
}
