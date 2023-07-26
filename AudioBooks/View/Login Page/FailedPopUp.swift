//
//  FailedPopUp.swift
//  AudioBooks
//
//  Created by Faiz Azhari Mursid on 24/07/23.
//

import SwiftUI

struct FailedPopUp: View {
    var body: some View {
        VStack {
            Image(systemName: "exclamationmark.circle")
                .font(.system(size: 80))
                .foregroundColor(.red)
            Text("Registrasi Gagal!")
                .font(.headline)
                .padding()
        }
        .padding()
        .background(Color.white)
        .cornerRadius(12)
        .shadow(radius: 10)
    }
}

struct FailedPopUp_Previews: PreviewProvider {
    static var previews: some View {
        FailedPopUp()
    }
}
