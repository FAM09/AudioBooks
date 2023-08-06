//
//  InputPasswordField.swift
//  AudioBooks
//
//  Created by Faiz Azhari Mursid on 05/08/23.
//

import SwiftUI

struct InputPasswordField: View {
    @State private var isSecure: Bool = true
    
    let variable: Binding<String>
    let placeHolder: String
    let label: String
    
    var body: some View {
        HStack(alignment: .center, spacing: 8) {
            VStack (alignment: .leading, spacing: 2){
                Text(label)
                    .font(Font.custom("Inter", size: 12))
                    .foregroundColor(Color(red: 0.46, green: 0.46, blue: 0.46))
                    .frame(maxWidth: .infinity, minHeight: 12, maxHeight: 12, alignment: .leading)
                if isSecure {
                    SecureField(placeHolder, text: variable)
                        .textContentType(.oneTimeCode)
                        .font(
                            Font.custom("Inter", size: 14)
                                .weight(.medium)
                        )
                        .foregroundColor(Color(red: 0.11, green: 0.11, blue: 0.11))
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                } else {
                    TextField(placeHolder, text: variable)
                        .font(
                            Font.custom("Inter", size: 14)
                                .weight(.medium)
                        )
                        .foregroundColor(Color(red: 0.11, green: 0.11, blue: 0.11))
                        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                }
                
                
            }
            
            Button(action: {
                isSecure.toggle()
            }) {
                Image("eye")
                    .frame(width: 24, height: 24)
            }
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

struct InputPasswordField_Previews: PreviewProvider {
    static var previews: some View {
        @State var txt: String = ""
        
        InputPasswordField(variable: $txt, placeHolder: "Password", label: "Password")
    }
}
