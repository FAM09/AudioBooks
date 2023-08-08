//
//  Home.swift
//  AudioBooks
//
//  Created by Faiz Azhari Mursid on 05/08/23.
//

import SwiftUI

struct Home: View {
    @State private var search: String = ""
    
    var body: some View {
        ZStack {
            VStack {
                VStack {
                    HStack(spacing: 82) {
                        Image("Left Actionable")
                            .frame(width: 24, height: 24)
                        
                        Text("Statistik")
                            .font(Font.custom("Inter", size: 18))
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color(red: 0.04, green: 0.04, blue: 0.04))
                        
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
                    .padding(.bottom, 26)
                    .padding(.top, 44)
                    
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
                                        .padding(0)
                                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                                    }
                                    .padding(0)
                                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                                }
                                .padding(0)
                                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                            }
                            .padding(0)
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
                              .padding(.top, 21)
                              .padding(.leading, 24)
                              .padding(.trailing, 190)
                            
                            Text("Finish more book to earn more point")
                              .font(Font.custom("Inter", size: 14))
                              .foregroundColor(Color(red: 0.46, green: 0.46, blue: 0.46))
                              .padding(.leading, 25)
                              .padding(.trailing, 111)
                              .padding(.top, 8)
                            
                            VStack(alignment: .center, spacing: 4) {
                                HStack(alignment: .center, spacing: 0) {
                                    EllipseProgressBar()
                                }
                                .padding(0)
                                .frame(width: 327, height: 235, alignment: .center)
                            }
                            .padding(.top, 18)
                        }
                        .frame(width: 375, height: 473)
                        .cornerRadius(40)
                    }
                }
                
                tabBar()
            }
        }
        .frame(width: 375, height: 812)
        .background(.white)
        .cornerRadius(16)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
