//
//  LatestRead.swift
//  AudioBooks
//
//  Created by Faiz Azhari Mursid on 08/08/23.
//

import SwiftUI

struct LatestRead: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("Latest read")
                .font(
                    Font.custom("Inter", size: 16)
                        .weight(.medium)
                )
                .foregroundColor(Color(red: 0.11, green: 0.11, blue: 0.11))
            
            CardInformation()
                .padding(.bottom, 8)
        }
        .frame(width: 327, height: 224, alignment: .leading)
    }
}

struct LatestRead_Previews: PreviewProvider {
    static var previews: some View {
        LatestRead()
    }
}
