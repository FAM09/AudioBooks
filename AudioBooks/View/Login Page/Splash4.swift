//
//  Splash4.swift
//  AudioBooks
//
//  Created by Faiz Azhari Mursid on 20/07/23.
//

import SwiftUI

struct Splash4: View {
    var body: some View {
        NavigationView {
            ZStack {
                Image("bro")
                    .padding(.top, 148)
                    .padding(.bottom, 350)
                    .padding(.leading, 24.5)
                    .padding(.trailing, 25)
                    .frame(width: 325.47293, height: 313.88303)
                
                Image("logo")
                    .padding(.top, 70.0)
                    .padding(.bottom, 698)
                    .padding(.leading, 19)
                    .padding(.trailing, 229)
                
                Text("Are you busy with your activities and would like to read a book? Your favorite books will still be available to you thanks to the audiobook feature")
                    .font(Font.custom("Inter", size: 14))
                    .foregroundColor(Color(red: 0.11, green: 0.11, blue: 0.11))
                    .frame(width: 326, height: 80, alignment: .bottomTrailing)
                    .padding(.top, 494)
                    .padding(.bottom, 238)
                    .padding(.leading, 24)
                    .padding(.trailing, 25)
                
                NavigationLink(destination: Splash3()) {
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

struct Splash4_Previews: PreviewProvider {
    static var previews: some View {
        Splash4()
    }
}
