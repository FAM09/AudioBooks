//
//  ButtonContinueWith.swift
//  AudioBooks
//
//  Created by Faiz Azhari Mursid on 02/08/23.
//

import SwiftUI

struct ButtonContinueWith: View {
    let spacing: CGFloat?
    let logo: String
    let txt: String
    let clr: Color
    
    var body: some View {
        HStack(alignment: .top, spacing: spacing) {
            Image(logo)
                .frame(width: 24, height: 24)
                .padding(.leading, 16)
                .padding(.vertical, 12)
            
            Text(txt)
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
        .background(clr)
        .cornerRadius(24)
    }
}

struct ButtonContinueWith_Previews: PreviewProvider {
    static var previews: some View {
        ButtonContinueWith(spacing: 47, logo: "Brands 2", txt: "Continue with Apple", clr: Color(red: 0.08, green: 0.05, blue: 0.05))
    }
}
