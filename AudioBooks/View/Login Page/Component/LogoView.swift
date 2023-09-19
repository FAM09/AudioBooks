//
//  LogoView.swift
//  AudioBooks
//
//  Created by Faiz Azhari Mursid on 08/09/23.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 28) {
            Image("Brands 3")
                .padding(8)
                .background(.white)
                .cornerRadius(12)
            
            Image("Brands 4")
                .padding(8)
                .background(.white)
                .cornerRadius(12)
            
            Image("Brands-2")
                .padding(8)
                .background(.white)
                .cornerRadius(12)
        }
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView()
    }
}
