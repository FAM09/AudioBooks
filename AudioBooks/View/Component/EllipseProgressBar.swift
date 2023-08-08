//
//  EllipseProgressBar.swift
//  AudioBooks
//
//  Created by Faiz Azhari Mursid on 08/08/23.
//

import SwiftUI

struct EllipseProgressBar: View {
    var body: some View {
        VStack {
            ZStack {
                Circle()
                    .trim(from: 0.5, to: 1)
                    .stroke(
                        Color(red: 0.953, green: 0.953, blue: 0.953),
                        lineWidth: 30
                    )
                    .frame(width: 270, height: 270)
                    .padding(.bottom, -215)
                
                Circle()
                    .trim(from: 0.5, to: 0.75)
                    .stroke(
                        Color(red: 0.44, green: 0.862, blue: 1.0),
                        lineWidth: 30
                    )
                    .frame(width: 270, height: 270)
                    .padding(.bottom, -215)
                
            }
            
            Text("50:20")
                .font(
                    Font.custom("Inter", size: 32)
                        .weight(.semibold)
                )
                .foregroundColor(Color(red: 0.11, green: 0.11, blue: 0.11))
            
            Text("Of 20h your reading goals")
                .font(Font.custom("Inter", size: 14))
                .foregroundColor(Color(red: 0.11, green: 0.11, blue: 0.11))
                .padding(.top, 4)
                .padding(.bottom, 19)
            
            ButtonBlock(txt: "Continue read")
                .padding(.bottom, 6)
        }
        .frame(width: 327, height: 236)
    }
}

struct EllipseProgressBar_Previews: PreviewProvider {
    static var previews: some View {
        EllipseProgressBar()
    }
}
