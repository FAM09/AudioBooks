//
//  InputTextField.swift
//  AudioBooks
//
//  Created by Faiz Azhari Mursid on 05/08/23.
//

import SwiftUI

struct InputTextField: View {
    let variable: Binding<String>
    let label: String
    let placeHolder: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 2) {
            Text(label)
                .font(Font.custom("Inter", size: 12))
                .foregroundColor(Color(red: 0.46, green: 0.46, blue: 0.46))
                .frame(maxWidth: .infinity, minHeight: 12, maxHeight: 12, alignment: .leading)
            
            TextField(placeHolder, text: variable)
                .font(
                    Font.custom("Inter", size: 14)
                        .weight(.medium)
                )
                .foregroundColor(Color(red: 0.08, green: 0.05, blue: 0.05))
                .frame(maxWidth: .infinity, minHeight: 16, maxHeight: 16, alignment: .topLeading)
        }
        .padding(12)
        .frame(width: 327, height: 48, alignment: .leading)
        .background(.white)
        .cornerRadius(8)
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .inset(by: 0.5)
                .stroke(Color(red: 0.08, green: 0.05, blue: 0.05), lineWidth: 1)
        )
    }
}

struct InputTextField_Previews: PreviewProvider {
    static var previews: some View {
        @State var txt: String = ""
        
        InputTextField(variable: $txt, label: "Email Address", placeHolder: "Email Address")
    }
}
