//
//  ListeningView.swift
//  AudioBooks
//
//  Created by Faiz Azhari Mursid on 15/08/23.
//

import SwiftUI

struct ListeningView: View {
    var body: some View {
        ZStack {
            VStack(spacing: 0.0) {
                VStack(alignment: .center, spacing: 12) {
                    Image("book preview")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 327, height: 363)
                        .clipped()
                }
                .padding(.top, 16)
                .padding(.bottom, 8)
                .frame(width: 327, height: 363, alignment: .center)
                .cornerRadius(8)
                .shadow(color: Color(red: 0.7, green: 0.7, blue: 0.7).opacity(0.15), radius: 2, x: 0, y: 4)
                
                HStack(alignment: .top, spacing: 36) {
                    HStack(alignment: .top, spacing: 12) {
                        Image("Left Actionable")
                            .frame(width: 24, height: 24)
                        
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Chapter 2 out of 20")
                                .font(
                                    Font.custom("Inter", size: 12)
                                        .weight(.bold)
                                )
                                .foregroundColor(Color(red: 0.46, green: 0.46, blue: 0.46))
                                .frame(maxWidth: .infinity, alignment: .topLeading)
                            
                            Text("Music, passion and idealism")
                                .font(Font.custom("Inter", size: 12))
                                .foregroundColor(Color(red: 0.09, green: 0.08, blue: 0.07))
                                .frame(maxWidth: .infinity, alignment: .topLeading)
                        }
                        .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    .frame(maxWidth: .infinity, alignment: .topLeading)
                    
                    Image("bookmark")
                        .frame(width: 24, height: 24)
                }
                .padding(.top, 26)
                .frame(width: 327, alignment: .topLeading)
                
                VStack(alignment: .center, spacing: 10) {
                    VStack(alignment: .leading, spacing: 4) {
                        HStack(alignment: .center, spacing: 5) {
                            ProgressView(value: /*@START_MENU_TOKEN@*/0.5/*@END_MENU_TOKEN@*/)
                                .frame(width: 327, height: 0)
                                ._colorMonochrome(Color(red: 0.51, green: 0.22, blue: 0.84))
                        }
                        .frame(maxWidth: .infinity, minHeight: 20, maxHeight: 20, alignment: .center)
                        
                        HStack(alignment: .top, spacing: 47) {
                            Text("20.40")
                                .font(Font.custom("Inter", size: 14))
                                .foregroundColor(.black)
                                .frame(maxWidth: .infinity, alignment: .leading)
                            
                            Text("120.30")
                                .font(Font.custom("Inter", size: 14))
                                .multilineTextAlignment(.center)
                                .foregroundColor(.black)
                        }
                        .frame(maxWidth: .infinity, alignment: .top)
                        
                    }
                    .frame(maxWidth: .infinity, alignment: .topLeading)
                    .frame(width: 327, height: 44)
                }
                .padding(.top, 22)
                
                HStack(alignment: .center, spacing: 24) {
                    Image(systemName: "backward.end")
                        .resizable()
                        .frame(width: 24, height: 24)
                    
                    Text("-15s")
                        .font(
                            Font.custom("Inter", size: 24)
                                .weight(.medium)
                        )
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                    
                    Image(systemName: "pause.circle")
                        .resizable()
                        .frame(width: 58, height: 58)
                    
                    Text("+15s")
                        .font(
                            Font.custom("Inter", size: 24)
                                .weight(.medium)
                        )
                        .multilineTextAlignment(.center)
                        .foregroundColor(.black)
                    
                    Image(systemName: "forward.end")
                        .resizable()
                        .frame(width: 24, height: 24)
                }
                .padding(.top, 10)
                .frame(width: 327, alignment: .center)
            }
        }
        .frame(width: 375, height: 812)
        .background(.white)
        .cornerRadius(16)
        
    }
}

struct ListeningView_Previews: PreviewProvider {
    static var previews: some View {
        ListeningView()
    }
}
