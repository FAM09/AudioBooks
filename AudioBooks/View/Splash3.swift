//
//  Splash3.swift
//  AudioBooks
//
//  Created by Faiz Azhari Mursid on 21/07/23.
//

import SwiftUI

struct Splash3: View {
    var body: some View {
        ZStack {
            Rectangle()
              .foregroundColor(.clear)
              .frame(width: 375, height: 812)
              .background(
                LinearGradient(
                  stops: [
                    Gradient.Stop(color: .black, location: 0.00),
                    Gradient.Stop(color: Color(red: 0.04, green: 0.04, blue: 0.04).opacity(0), location: 1.00),
                  ],
                  startPoint: UnitPoint(x: 0.5, y: -0.34),
                  endPoint: UnitPoint(x: 0.5, y: 1)
                )
              )
            
            HStack(alignment: .top, spacing: 5.40741) {
                Image("logo-3")
                    .padding(.leading, 0)
                    .padding(.trailing, 0.00002)
                    .padding(.vertical, 0)
                    .frame(width: 256.85187, height: 73, alignment: .top)
            }
            .padding(.top, 187)
            .padding(.bottom, 552)
            .padding(.horizontal, 59.1)
            
            HStack(alignment: .top, spacing: 48) {
                HStack {
                    VStack {
                        Image("Brands 2")
                    }
                    .padding(.trailing, 48)
                    
                    VStack {
                        Text("Continue with Apple")
                          .font(
                            Font.custom("Inter", size: 16)
                              .weight(.medium)
                          )
                          .multilineTextAlignment(.center)
                          .foregroundColor(.white)
                    }
                }
                .padding(.leading, 16)
                .padding(.trailing, 88)
                .padding(.vertical, 12)
            }
            .frame(width: 332, height: 48, alignment: .topLeading)
            .background(Color(red: 0.08, green: 0.05, blue: 0.05))
            .cornerRadius(24)
            .padding(.top, 408)
            .padding(.bottom, 356)
            .padding(.leading, 21)
            .padding(.trailing, 22)
            
            HStack(alignment: .center, spacing: 47) {
                HStack {
                    VStack {
                        Image("Brands 1")
                    }
                    .padding(.trailing, 47)
                    
                    VStack {
                        Text("Continue with Google")
                          .font(
                            Font.custom("Inter", size: 16)
                              .weight(.medium)
                          )
                          .multilineTextAlignment(.center)
                          .foregroundColor(.white)
                          .frame(width: 166, alignment: .top)
                    }
                }
                .padding(.leading, 16)
                .padding(.trailing, 83)
                .padding(.vertical, 12)
            }
            .frame(width: 332, height: 48, alignment: .leading)
            .background(Color(red: 1, green: 0.32, blue: 0.32))
            .cornerRadius(24)
            .padding(.top, 472)
            .padding(.bottom, 292)
            .padding(.leading, 21)
            .padding(.trailing, 22)
            
            HStack(alignment: .top, spacing: 33) {
                Image("Brands")
                .frame(width: 24, height: 24)
                .padding(.leading, 16)
                .padding(.vertical, 12)
                
                Text("Continue with Facebook")
                    .font(
                        Font.custom("Inter", size: 16)
                            .weight(.bold)
                    )
                    .font(.title)
                    .padding(.all)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
            }
            .frame(width: 332, height: 48, alignment: .topLeading)
            .background(Color(red: 0, green: 0.47, blue: 1))
            .cornerRadius(24)
            .padding(.top, 540)
            .padding(.bottom, 224)
            .padding(.leading, 21)
            .padding(.trailing, 22)
            
            VStack(alignment: .center, spacing: 0) {
                HStack {
                    Text("Skip")
                      .font(
                        Font.custom("Inter", size: 16)
                          .weight(.medium)
                      )
                      .multilineTextAlignment(.center)
                      .foregroundColor(.white)
                }
                .padding(.horizontal, 16)
                .padding(.vertical, 8)
                .cornerRadius(12)
            }
            .padding(.top, 612)
            .padding(.bottom, 160)
            .padding(.leading, 155)
            .padding(.trailing, 154)
            
            HStack(alignment: .center, spacing: 10) {
                Text("By continuing you agree to T&Cs. We use your data to offer you a personalized experiences. Find out more.")
                    .frame(width: 311, height: 32, alignment: .center)
                    .padding(.all, 16)
                    .font(Font.custom("Inter", size: 12))
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .frame(width: 327, height: 52, alignment: .center)
            .padding(.top, 702)
            .padding(.bottom, 58)
            .padding(.horizontal, 24)
        }
        .frame(width: 375, height: 812)
        .background(
          Image("Splash 3")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 375, height: 812)
            .clipped()
        )
        .background(.white)
        .cornerRadius(16)
    }
}

struct Splash3_Previews: PreviewProvider {
    static var previews: some View {
        Splash3()
    }
}
