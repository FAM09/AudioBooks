//
//  ButtonBorder.swift
//  AudioBooks
//
//  Created by Faiz Azhari Mursid on 29/07/23.
//

import SwiftUI

struct ButtonBorder: View {
    var body: some View {
        HStack(alignment: .center, spacing: 10) {
            Text("Login")
                    .font(
                        Font.custom("Inter", size: 16)
                            .weight(.medium)
                    )
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color(red: 0.38, green: 0.15, blue: 0.71))
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                    .padding(.horizontal, 16)
                    .padding(.vertical, 12)
        }
        .frame(width: 327, height: 48, alignment: .center)
        .cornerRadius(24)
        .shadow(color: Color(red: 0.7, green: 0.7, blue: 0.7).opacity(0.15), radius: 2, x: 0, y: 4)
        .overlay(
            RoundedRectangle(cornerRadius: 24)
                .inset(by: 0.5)
                .stroke(Color(red: 0.38, green: 0.15, blue: 0.71), lineWidth: 1)
        )
    }
}

struct ButtonBorder_Previews: PreviewProvider {
    static var previews: some View {
        ButtonBorder()
    }
}
