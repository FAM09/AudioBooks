//
//  Partial_TabBar.swift
//  AudioBooks
//
//  Created by Faiz Azhari Mursid on 13/08/23.
//

import SwiftUI

struct Partial_TabBar: View {
    let img: Image
    let txt: String
    
    var body: some View {
        VStack(alignment: .center, spacing: 4) {
            img
                .foregroundColor(.yellow)
            .frame(width: 24, height: 24)
            
            Text(txt)
              .font(Font.custom("Inter", size: 12))
              .multilineTextAlignment(.center)
              .frame(width: 94, alignment: .top)
        }
        .padding(.horizontal, 0)
        .padding(.vertical, 8)
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
    }
}

struct Partial_TabBar_Previews: PreviewProvider {
    static var previews: some View {
        Partial_TabBar(img: Image(systemName: "bookmark"), txt: "Bookmark")
    }
}
