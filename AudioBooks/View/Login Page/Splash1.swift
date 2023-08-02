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
            ZStack {
                ZStack {
                    Image("bro 1")
                }
                .frame(width: 325.69028, height: 318.91556)
                .padding(.top, 144)
                .padding(.bottom, 349)
                .padding(.leading, 24.5)
                .padding(.trailing, 24.8)
                
                HStack(alignment: .center, spacing: 2.2) {
                    Image("logo")
                        .padding(5.5)
                }
                .padding(.top, 70)
                .padding(.bottom, 698)
                .padding(.leading, 19)
                .padding(.trailing, 229)
                
                HStack(alignment: .center, spacing: 0) {
                    Text("""
    We provide a wide variety of books from around the world, so you can read them anywhere and anytime. Everything at your fingertips
    """
                    )
                    .font(Font.custom("Inter", size: 14))
                    .foregroundColor(Color(red: 0.11, green: 0.11, blue: 0.11))
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                }
                .padding(0)
                .frame(width: 326, height: 80, alignment: .center)
                .padding(.top, 495)
                .padding(.bottom, 237)
                .padding(.leading, 24)
                .padding(.trailing, 25)
                
                NavigationLink(destination: Splash4()) {
                    ButtonBlock(txt: "Continue")
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
        .navigationBarBackButtonHidden(true)
    }
}

struct Splash1_Previews: PreviewProvider {
    static var previews: some View {
        Splash1()
    }
}
