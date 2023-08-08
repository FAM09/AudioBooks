//
//  categoriesItem.swift
//  AudioBooks
//
//  Created by Faiz Azhari Mursid on 08/08/23.
//

import SwiftUI

struct categoriesItem: View {
    let img: String
    let txt: String
    
    var body: some View {
        VStack(alignment: .center, spacing: 8) {
            VStack(alignment: .leading, spacing: 10) {
                Rectangle()
                  .foregroundColor(.clear)
                  .frame(width: 28, height: 28)
                  .background(
                    Image(img)
                      .resizable()
                      .aspectRatio(contentMode: .fit)
                  )
                  .cornerRadius(19)
            }
            .padding(10)
            .background(Color(red: 1, green: 0.91, blue: 0.86))
            .cornerRadius(46)
            .shadow(color: Color(red: 0.7, green: 0.7, blue: 0.7).opacity(0.15), radius: 2, x: 0, y: 4)
            
            Text(txt)
              .font(Font.custom("Inter", size: 12))
              .foregroundColor(Color(red: 0.08, green: 0.05, blue: 0.05))
        }
        .padding(0)
    }
}

struct categoriesItem_Previews: PreviewProvider {
    static var previews: some View {
        categoriesItem(img: "comics", txt: "Novel")
    }
}
