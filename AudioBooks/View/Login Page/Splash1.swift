//
//  Splash1.swift
//  AudioBooks
//
//  Created by Faiz Azhari Mursid on 20/07/23.
//

import SwiftUI

struct Splash1: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 0.0) {
                HStack {
                    Image("logo")
                    
                    Spacer()
                }
                .padding(.top, 70)
                .padding(.bottom, 30)
                
                Image("bro 1")
                    .padding(.bottom, 32.08)
                
                Text("""
We provide a wide variety of books from around the world, so you can read them anywhere and anytime. Everything at your fingertips
"""
                )
                .font(Font.custom("Inter", size: 14))
                .foregroundColor(Color(red: 0.11, green: 0.11, blue: 0.11))
                .frame(height: 80, alignment: .center)
                .padding(.bottom, 43)
                
                NavigationLink(destination: Splash4()) {
                    ButtonBlock(txt: "Continue")
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
        .navigationBarBackButtonHidden(true)
    }
}

struct Splash1_Previews: PreviewProvider {
    static var previews: some View {
        Splash1()
    }
}
