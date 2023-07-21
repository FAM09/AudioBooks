//
//  Login.swift
//  AudioBooks
//
//  Created by Faiz Azhari Mursid on 21/07/23.
//

import SwiftUI

struct Login: View {
    var body: some View {
        ZStack {
            HStack(alignment: .top, spacing: 5.40741) {
                Image("logo-4")
                
            }
            .frame(width: 256.85187, height: 73, alignment: .top)
            .padding(.top, 153)
            .padding(.bottom, 586)
            .padding(.leading, 59)
            .padding(.trailing, 59.15)
            
            HStack {
                Text("Login")
                  .font(
                    Font.custom("Inter", size: 32)
                      .weight(.semibold)
                  )
                  .foregroundColor(.black)
            }
            .padding(.top, 284)
            .padding(.bottom, 492)
            .padding(.leading, 22)
            .padding(.trailing, 267)
        }
        .frame(width: 375, height: 812)
        .background(.white)
        .cornerRadius(16)
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
