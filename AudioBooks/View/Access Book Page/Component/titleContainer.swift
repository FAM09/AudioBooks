//
//  titleContainer.swift
//  AudioBooks
//
//  Created by Faiz Azhari Mursid on 08/08/23.
//

import SwiftUI

struct titleContainer: View {
    let title: String
    let subTitle: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            VStack(alignment: .leading, spacing: 8) {
                Text(title)
                    .font(
                        Font.custom("Inter", size: 16)
                            .weight(.medium)
                    )
                    .foregroundColor(Color(red: 0.08, green: 0.05, blue: 0.05))
                    .frame(maxWidth: .infinity, alignment: .topLeading)
                
                Text(subTitle)
                    .font(Font.custom("Inter", size: 12))
                    .foregroundColor(Color(red: 0.46, green: 0.46, blue: 0.46))
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            .frame(width: 326, alignment: .leading)
        }
        .frame(width: 327, alignment: .leading)
    }
}

struct titleContainer_Previews: PreviewProvider {
    static var previews: some View {
        titleContainer(title: "Free book", subTitle: "Enjoy reading with the world's most high quality digital books.")
    }
}
