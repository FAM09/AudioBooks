//
//  StatisticView.swift
//  AudioBooks
//
//  Created by Faiz Azhari Mursid on 11/08/23.
//

import SwiftUI

struct StatisticView: View {
    var body: some View {
        VStack {
            ScrollView {
                Text("Reading goals")
                    .font(
                        Font.custom("Inter", size: 32)
                            .weight(.semibold)
                    )
                    .foregroundColor(Color(red: 0.11, green: 0.11, blue: 0.11))
                    .padding(.leading, 28)
                    .padding(.trailing, 129)
                    .padding(.bottom, 28)
                
                HStack(alignment: .center, spacing: 8) {
                    HStack(alignment: .center, spacing: 0) {
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 92, height: 92)
                            .background(
                                Image("target")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                            )
                    }
                    .frame(minWidth: 110, maxWidth: 110, maxHeight: .infinity, alignment: .center)
                    .background(Color(red: 0.82, green: 0.98, blue: 1))
                    .cornerRadius(10)
                    .shadow(color: Color(red: 0.7, green: 0.7, blue: 0.7).opacity(0.15), radius: 2, x: 0, y: 4)
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Keep up!!")
                            .font(
                                Font.custom("Inter", size: 16)
                                    .weight(.bold)
                            )
                            .foregroundColor(Color(red: 0.11, green: 0.11, blue: 0.11))
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        VStack(alignment: .leading, spacing: 8) {
                            Text("You are on the way to reaching your weekly goals.")
                                .font(Font.custom("Inter", size: 12))
                                .foregroundColor(Color(red: 0.46, green: 0.46, blue: 0.46))
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                            VStack(alignment: .leading, spacing: 7) {
                                Text("200 XP more to earn 10% discount")
                                    .font(Font.custom("Inter", size: 12))
                                    .foregroundColor(Color(red: 0.11, green: 0.11, blue: 0.11))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                                HStack(alignment: .center, spacing: 5) {
                                    ProgressView(value: 0.6)
                                        .frame(maxWidth: .infinity, minHeight: 8, maxHeight: 8)
                                        ._colorMonochrome(Color(red: 0.51, green: 0.22, blue: 0.84))
                                    
                                    Text("300XP")
                                        .font(Font.custom("Inter", size: 12))
                                        .multilineTextAlignment(.center)
                                        .foregroundColor(Color(red: 0.46, green: 0.46, blue: 0.46))
                                }
                                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                            }
                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                        }
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                }
                .padding(.horizontal, 8)
                .padding(.vertical, 12)
                .frame(width: 327, height: 145, alignment: .center)
                .background(.white)
                .cornerRadius(8)
                .shadow(color: Color(red: 0.7, green: 0.7, blue: 0.7).opacity(0.3), radius: 4, x: 0, y: 0)
                
                VStack {
                    Text("Your reading goals")
                      .font(
                        Font.custom("Inter", size: 18)
                          .weight(.medium)
                      )
                      .foregroundColor(Color(red: 0.11, green: 0.11, blue: 0.11))
                      .padding(.bottom, 8)
                      .padding(.leading, 24)
                      .padding(.trailing, 190)
                      
                    Text("Finish more book to earn more point")
                      .font(Font.custom("Inter", size: 14))
                      .foregroundColor(Color(red: 0.46, green: 0.46, blue: 0.46))
                      .padding(.leading, 25)
                      .padding(.trailing, 111)
                    
                    VStack(alignment: .center, spacing: 4) {
                        HStack(alignment: .center, spacing: 0) {
                            EllipseProgressBar()
                        }
                        .padding(0)
                        .frame(width: 327, height: 235, alignment: .center)
                        
                        HStack(alignment: .center, spacing: 6) {
                            Text("Set your goals")
                              .font(Font.custom("Inter", size: 14))
                              .foregroundColor(Color(red: 0.11, green: 0.11, blue: 0.11))
                            
                            Image("right")
                            .frame(width: 32, height: 32)
                        }
                        .frame(width: 327, alignment: .center)
                    }
                    .padding(.top, 8)
                    
                }.frame(width: 375, height: 384)
                .cornerRadius(40)
                .padding(.top, 12.0)
                
                VStack {
                    LatestRead()
                        .padding(.horizontal, 24)
                        .padding(.bottom, 18)
                    
                    VStack(alignment: .leading, spacing: 8) {
                        titleContainer(title: "Free book", subTitle: "Enjoy reading with the world's most high quality digital books.")
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(alignment: .center, spacing: 24) {
                                
                                ForEach(Items) { i in
                                    item(img: i.img, title: i.title, auth: i.auth, rating: i.rating)
                                }
                            }
                            .padding(4)
                        }
                        
                        titleContainer(title: "Popular book for you", subTitle: "Enjoy reading with the world's most high quality digital storybooks")
                        
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(alignment: .center, spacing: 24) {
                                
                                ForEach(Items) { i in
                                    item(img: i.img, title: i.title, auth: i.auth, rating: i.rating)
                                }
                            }
                            .padding(4)
                        }
                    }
                    .padding(0)
                    .frame(width: 323, alignment: .topLeading)
                }
            }
        }
        .padding(.top, 118)
        .padding(.bottom, 93)
        .frame(width: 375, height: 812)
    }
}

struct StatisticView_Previews: PreviewProvider {
    static var previews: some View {
        StatisticView()
    }
}
