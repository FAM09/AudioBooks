//
//  Login.swift
//  AudioBooks
//
//  Created by Faiz Azhari Mursid on 21/07/23.
//

import SwiftUI

struct Login: View {
    @State private var emailAddress: String = ""
    @State private var password: String = ""
    @State private var isSecure: Bool = true
    
    var body: some View {
        NavigationView {
            ScrollView {
                ZStack {
                    Image("logo-4")
                        .frame(width: 256.85187, height: 73, alignment: .top)
                        .padding(.top, 153)
                        .padding(.bottom, 586)
                        .padding(.leading, 59)
                        .padding(.trailing, 59.15)
                    
                    Text("Login")
                        .font(
                            Font.custom("Inter", size: 32)
                                .weight(.semibold)
                        )
                        .foregroundColor(.black)
                        .padding(.top, 284)
                        .padding(.bottom, 492)
                        .padding(.leading, 22)
                        .padding(.trailing, 267)
                    
                    Text("Enter your email address and password here. ")
                        .font(Font.custom("Inter", size: 14))
                        .foregroundColor(Color(red: 0.11, green: 0.11, blue: 0.11))
                        .padding(.top, 328)
                        .padding(.bottom, 464)
                        .padding(.leading, 24)
                        .padding(.trailing, 68)
                    
                    InputTextField(variable: $emailAddress, label: "Email address", placeHolder: "Email address")
                    .padding(.top, 368)
                    .padding(.bottom, 396)
                    .padding(.vertical, 24)
                    
                    InputPasswordField(variable: $password, placeHolder: "Password", label: "Password")
                    .padding(.top, 434)
                    .padding(.bottom, 330)
                    .padding(.vertical, 24)
                    
                    Text("Forgot password?")
                        .font(
                            Font.custom("Inter", size: 14)
                                .weight(.medium)
                        )
                        .foregroundColor(.black)
                        .padding(.top, 506)
                        .padding(.bottom, 286)
                        .padding(.leading, 231)
                        .padding(.trailing, 24)
                    
                    NavigationLink(destination: Splash1()) {
                        ButtonBlock(txt: "Login")
                            .onTapGesture {
                                print("Login")
                            }
                    }
                    .padding(.top, 542)
                    .padding(.bottom, 222)
                    .padding(.vertical, 24)
                    
                    Text("or Login with")
                        .font(Font.custom("Inter", size: 14))
                        .foregroundColor(.black)
                        .padding(.top, 620)
                        .padding(.bottom, 172)
                        .padding(.leading, 145)
                        .padding(.trailing, 144)
                    
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
                    .padding(.top, 670)
                    .padding(.bottom, 102)
                    .padding(.leading, 100)
                    .padding(.trailing, 99)
                    
                    HStack(alignment: .top, spacing: 4) {
                        Text("Didn’t have account?")
                            .font(Font.custom("Inter", size: 12))
                            .foregroundColor(.black)
                        
                        NavigationLink (destination: Register()) {
                            Text("Register here")
                                .font(Font.custom("Inter", size: 12))
                                .foregroundColor(Color(red: 0.38, green: 0.15, blue: 0.71))
                        }
                    }
                    .padding(.top, 730)
                    .padding(.bottom, 66)
                    .padding(.vertical, 88)
                }
                .frame(width: 375, height: 812)
                .background(.white)
                .cornerRadius(16)
            }
            .fixedSize()
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
