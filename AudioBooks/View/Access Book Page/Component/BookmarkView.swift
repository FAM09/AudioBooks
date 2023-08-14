//
//  BookmarkView.swift
//  AudioBooks
//
//  Created by Faiz Azhari Mursid on 12/08/23.
//

import SwiftUI

struct BookmarkView: View {
    var body: some View {
        VStack {
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
            .frame(width: 328, height: 631)
            .fixedSize()
            .padding(.top, 32)
        }
        .frame(width: 375, height: 812)
        
    }
}

struct BookmarkView_Previews: PreviewProvider {
    static var previews: some View {
        BookmarkView()
    }
}
