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
            VStack(alignment: .center, spacing: 0.0) {
                HStack {
                    Image("logo")
                    
                    Spacer()
                }
                .padding(.top, 70)
                .padding(.bottom, 39.92)
                
                Image("bro")
                
                Spacer()
                
                Text("Are you busy with your activities and would like to read a book? Your favorite books will still be available to you thanks to the audiobook feature")
                    .font(Font.custom("Inter", size: 15))
                    .foregroundColor(Color(red: 0.11, green: 0.11, blue: 0.11))
                    .frame(height: 80, alignment: .center)
                
                Spacer()
                
                NavigationLink(destination: Splash3()) {
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

struct Splash4_Previews: PreviewProvider {
    static var previews: some View {
        Splash4()
    }
}
