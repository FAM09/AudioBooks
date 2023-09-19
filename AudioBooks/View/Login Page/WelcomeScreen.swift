//
//  WelcomeScreen.swift
//  AudioBooks
//
//  Created by Faiz Azhari Mursid on 20/07/23.
//

import SwiftUI
import CLTypingLabel

struct WelcomeScreen: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 0.0) {
                Spacer()
                
                Image("logo-2")
                    .padding(.bottom, 67)
                
                Text("""
                     Reading a book and getting bored?
                     Digibook lets you enjoy your favorite books in a fun new way, anytime, anywhere.With just the touch of a finger, you can find and read your favorite books.
                     """)
                .font(Font.custom("Inter", size: 17))
                .multilineTextAlignment(.center)
                .foregroundColor(Color(red: 0.11, green: 0.11, blue: 0.11))
                .frame(height: 133, alignment: .center)
                .padding(.bottom, 20)
                
                NavigationLink(destination: Splash1()) {
                    ButtonBlock(txt: "Take a tour")
                }
                .padding(.bottom, 20)
                
                NavigationLink(destination: Login()) {
                    ButtonBorder()
                }
                .padding(.bottom, 78)
            }
            .frame(width: 327, height: 812)
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
