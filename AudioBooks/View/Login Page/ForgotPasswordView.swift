//
//  ForgotPasswordView.swift
//  AudioBooks
//
//  Created by Faiz Azhari Mursid on 15/09/23.
//  Copyright © 2023 fam. All rights reserved.
//

import SwiftUI

struct ForgotPasswordView: View {
    @State private var emailAddress: String = ""
    @State var isPresent: Bool
    
    var body: some View {
        VStack {
            InputTextField(variable: $emailAddress, label: "Email address", placeHolder: "Email address")
                .padding(.bottom, 18)
            
            ButtonBlock(txt: "Reset Password")
                .onTapGesture {
                    isPresent.toggle()
                    print(isPresent)
                }
        }
    }
}

struct ForgotPasswordView_Previews: PreviewProvider {
    static var previews: some View {
        ForgotPasswordView(isPresent: true)
    }
}
