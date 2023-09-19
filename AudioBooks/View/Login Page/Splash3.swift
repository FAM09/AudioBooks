//
//  Splash3.swift
//  AudioBooks
//
//  Created by Faiz Azhari Mursid on 21/07/23.
//

import SwiftUI

struct Splash3: View {
    var body: some View {
        NavigationView {
            ZStack {
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 375, height: 828)
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
                
                VStack (alignment: .center, spacing: 0.0){
                    Spacer()
                    
                    Image("logo-3")
                        .frame(width: 256.85187, height: 73, alignment: .top)
                        .padding(.bottom, 148)
                    
                    NavigationLink(destination: Login()){
                        ButtonContinueWith(spacing: 48, logo: "Brands 2", txt: "Continue with Apple", clr: Color(red: 0.08, green: 0.05, blue: 0.05))
                    }
                    .padding(.bottom, 20)
                    
                    NavigationLink(destination: Login()){
                        ButtonContinueWith(spacing: 43, logo: "Brands 1", txt: "Continue with Google", clr: Color(red: 1, green: 0.32, blue: 0.32))
                    }
                    .padding(.bottom, 20)
                    
                    NavigationLink(destination: Login()){
                        ButtonContinueWith(spacing: 33, logo: "Brands", txt: "Continue with Facebook", clr: Color(red: 0, green: 0.47, blue: 1))
                    }
                    .padding(.bottom, 24)
                    
                    NavigationLink (destination: Login()) {
                        Text("Skip")
                            .font(
                                Font.custom("Inter", size: 16)
                                    .weight(.medium)
                            )
                            .multilineTextAlignment(.center)
                            .foregroundColor(.white)
                    }
                    .padding(.bottom, 50)
                    
                    HStack(alignment: .center, spacing: 10) {
                        Text("By continuing you agree to T&Cs. We use your data to offer you a personalized experiences. Find out more.")
                            .frame(width: 311, height: 32, alignment: .center)
                            .padding(.all, 16)
                            .font(Font.custom("Inter", size: 12))
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    .frame(width: 327, height: 52, alignment: .center)
                    .padding(.bottom, 58)
                }
            }
            .frame(width: 375, height: 828)
            .background(
                Image("Splash 3")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 375, height: 828)
                    .clipped()
            )
            .background(.white)
            .cornerRadius(16)
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct Splash3_Previews: PreviewProvider {
    static var previews: some View {
        Splash3()
    }
}
