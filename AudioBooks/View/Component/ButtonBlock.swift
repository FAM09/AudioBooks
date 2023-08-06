//
//  ButtonBlock.swift
//  AudioBooks
//
//  Created by Faiz Azhari Mursid on 29/07/23.
//

import SwiftUI

struct ButtonBlock: View {
    let txt : String
    
    
    var body: some View {
        HStack(alignment: .center, spacing: 10) {
            Text(txt)
                    .font(Font.custom("Inter", size: 16))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                    .padding(.horizontal, 16)
                    .padding(.vertical, 12)
        }
        .frame(width: 327, height: 48, alignment: .center)
        .background(Color(red: 0.38, green: 0.15, blue: 0.71))
        .cornerRadius(24)
        .shadow(color: Color(red: 0.7, green: 0.7, blue: 0.7).opacity(0.15), radius: 2, x: 0, y: 4)
    }
}

struct ButtonBlock_Previews: PreviewProvider {
    static var previews: some View {
        ButtonBlock(txt: "Take a tour")
    }
}
