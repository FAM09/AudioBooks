//
//  WelcomeScreen.swift
//  AudioBooks
//
//  Created by Faiz Azhari Mursid on 20/07/23.
//

import SwiftUI

struct WelcomeScreen: View {
    var body: some View {
        ZStack {
            HStack(alignment: .center, spacing: 0) {
                Text("""
                     Reading a book and getting bored?
                     Digibook lets you enjoy your favorite books in a fun new way, anytime, anywhere.With just the touch of a finger, you can find and read your favorite books.
                     """)
                  .font(Font.custom("Inter", size: 14))
                  .multilineTextAlignment(.center)
                  .foregroundColor(Color(red: 0.11, green: 0.11, blue: 0.11))
                  .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            }
            .frame(width: 327, height: 133, alignment: .center)
            .padding(.top, 465)
            .padding(.bottom, 214)
            .padding(.horizontal, 24)
            
            HStack(alignment: .center, spacing: 5.6) {
                Image("logo-2")
            }
            .padding(14)
            .padding(.top, 286)
            .padding(.bottom, 414)
            .padding(.leading, 26.3)
            .padding(.trailing, 25.8)
            
            HStack(alignment: .center, spacing: 10) {
                Text("Take a tour")
                  .font(Font.custom("Inter", size: 16))
                  .multilineTextAlignment(.center)
                  .foregroundColor(.white)
                  .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                  .padding(.horizontal, 16)
                  .padding(.vertical, 12)
            }
            .frame(width: 327, height: 48, alignment: .center)
            .background(Color(red: 0.38, green: 0.15, blue: 0.71))
            .cornerRadius(24)
            .shadow(color: Color(red: 0.7, green: 0.7, blue: 0.7).opacity(0.15), radius: 2, x: 0, y: 4)
            .padding(.top, 618)
            .padding(.bottom, 146)
            .padding(.horizontal, 24)
            
            HStack(alignment: .center, spacing: 10) {
                Text("Login")
                  .font(
                    Font.custom("Inter", size: 16)
                      .weight(.medium)
                  )
                  .multilineTextAlignment(.center)
                  .foregroundColor(Color(red: 0.38, green: 0.15, blue: 0.71))
                  .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                  .padding(.horizontal, 16)
                  .padding(.vertical, 12)
            }
            .frame(width: 327, height: 48, alignment: .center)
            .cornerRadius(24)
            .shadow(color: Color(red: 0.7, green: 0.7, blue: 0.7).opacity(0.15), radius: 2, x: 0, y: 4)
            .overlay(
              RoundedRectangle(cornerRadius: 24)
                .inset(by: 0.5)
                .stroke(Color(red: 0.38, green: 0.15, blue: 0.71), lineWidth: 1)
            )
            .padding(.top, 686)
            .padding(.bottom, 78)
            .padding(.horizontal, 24)
        }
        .frame(width: 375, height: 812)
        .background(.white)
        .cornerRadius(16)
    }
}

struct WelcomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen()
    }
}
