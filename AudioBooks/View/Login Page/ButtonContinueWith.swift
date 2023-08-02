//
//  ButtonContinueWith.swift
//  AudioBooks
//
//  Created by Faiz Azhari Mursid on 02/08/23.
//

import SwiftUI

struct ButtonContinueWith: View {
    let logo: String
    let txt: String
    let clr: Color
    
    var body: some View {
        HStack(alignment: .top, spacing: 48) {
            HStack {
                VStack {
                    Image(logo)
                }
                .padding(.trailing, 48)
                
                VStack {
                    Text(txt)
                        .font(
                            Font.custom("Inter", size: 16)
                                .weight(.medium)
                        )
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                }
            }
            .padding(.leading, 16)
            .padding(.trailing, 88)
            .padding(.vertical, 12)
        }
        .frame(width: 332, height: 48, alignment: .topLeading)
        .background(clr)
        .cornerRadius(24)
    }
}

struct ButtonContinueWith_Previews: PreviewProvider {
    static var previews: some View {
        ButtonContinueWith(logo: "Brands 2", txt: "Continue with Apple", clr: Color(red: 0.08, green: 0.05, blue: 0.05))
    }
}
