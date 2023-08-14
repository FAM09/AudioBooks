//
//  Pop up success.swift
//  AudioBooks
//
//  Created by Faiz Azhari Mursid on 24/07/23.
//

import SwiftUI

struct StatusPopup: View {
    let img: String
    let txt: String
    let clr: Color
    
    var body: some View {
        VStack {
            Image(systemName: img)
                .font(.system(size: 80))
                .foregroundColor(clr)
            Text(txt)
                .font(.headline)
                .padding()
        }
        .padding()
        .background(Color.white)
        .cornerRadius(12)
        .shadow(radius: 10)
    }
}

struct StatusPopup_Previews: PreviewProvider {
    static var previews: some View {
        StatusPopup(img: "exclamationmark.circle", txt: "Registrasi Gagal!", clr: .red)
    }
}
