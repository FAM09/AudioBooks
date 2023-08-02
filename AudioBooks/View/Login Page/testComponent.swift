//
//  testComponent.swift
//  AudioBooks
//
//  Created by Faiz Azhari Mursid on 29/07/23.
//

import SwiftUI

struct testComponent: View {
    var body: some View {
        HStack(alignment: .top, spacing: 48) {
            HStack {
                VStack {
                    Image("Brands 2")
                }
                .padding(.trailing, 48)
                
                VStack {
                    Text("Continue with Apple")
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
        .background(Color(red: 0.08, green: 0.05, blue: 0.05))
        .cornerRadius(24)
        .padding(.top, 408)
        .padding(.bottom, 356)
        .padding(.leading, 21)
        .padding(.trailing, 22)
    }
}

struct testComponent_Previews: PreviewProvider {
    static var previews: some View {
        testComponent()
    }
}
