//
//  InputTextFieldError.swift
//  AudioBooks
//
//  Created by Faiz Azhari Mursid on 09/09/23.
//  Copyright © 2023 fam. All rights reserved.
//

import SwiftUI

struct InputTextFieldError: View {
    let variable: Binding<String>
    var isTrue: Bool
    let label: String
    let placeHolder: String
    let errorMessage: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 2) {
            Text(label)
                .font(Font.custom("Inter", size: 12))
                .foregroundColor({isTrue ? Color(red: 0.46, green: 0.46, blue: 0.46) : Color.red}())
                .frame(maxWidth: .infinity, minHeight: 12, maxHeight: 12, alignment: .leading)
            
            TextField({isTrue ? placeHolder : errorMessage}(), text: variable)
                .font(
                    Font.custom("Inter", size: 14)
                        .weight(.medium)
                )
                .frame(maxWidth: .infinity, minHeight: 16, maxHeight: 16, alignment: .topLeading)
        }
        .padding(12)
        .frame(width: 327, height: 48, alignment: .leading)
        .background(.white)
        .cornerRadius(8)
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .inset(by: 0.5)
                .stroke({isTrue ? Color(red: 0.46, green: 0.46, blue: 0.46) : Color.red}(), lineWidth: 1)
        )
    }
}

struct InputTextFieldError_Previews: PreviewProvider {
    static var previews: some View {
        @State var txt: String = ""
        
        InputTextFieldError(variable: $txt, isTrue: false, label: "Email Address", placeHolder: "Email address", errorMessage: "Email tidak valid")
    }
}
