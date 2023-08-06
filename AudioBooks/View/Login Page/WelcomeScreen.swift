//
//  WelcomeScreen.swift
//  AudioBooks
//
//  Created by Faiz Azhari Mursid on 20/07/23.
//

import SwiftUI

struct WelcomeScreen: View {
    var body: some View {
        NavigationView {
            ZStack {
                Text("""
                     Reading a book and getting bored?
                     Digibook lets you enjoy your favorite books in a fun new way, anytime, anywhere.With just the touch of a finger, you can find and read your favorite books.
                     """)
                .font(Font.custom("Inter", size: 14))
                .multilineTextAlignment(.center)
                .foregroundColor(Color(red: 0.11, green: 0.11, blue: 0.11))
                .frame(width: 327, height: 133, alignment: .center)
                .padding(.top, 465)
                .padding(.bottom, 214)
                .padding(.horizontal, 24)
                
                Image("logo-2")
                    .padding(14)
                    .padding(.top, 286)
                    .padding(.bottom, 414)
                    .padding(.leading, 26.3)
                    .padding(.trailing, 25.8)
                
                NavigationLink(destination: Splash1()) {
                    ButtonBlock(txt: "Take a tour")
                }
                .padding(.top, 618)
                .padding(.bottom, 146)
                .padding(.horizontal, 24)
                
                NavigationLink(destination: Login()) {
                    ButtonBorder()
                }
                .padding(.top, 686)
                .padding(.bottom, 78)
                .padding(.horizontal, 24)
            }
            .frame(width: 375, height: 812)
            .background(.white)
            .cornerRadius(16)
        }
    }
}

struct WelcomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeScreen()
    }
}
