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
                    HStack(alignment: .top, spacing: 5.40741) {
                        Image("logo-4")
                        
                    }
                    .frame(width: 256.85187, height: 73, alignment: .top)
                    .padding(.top, 153)
                    .padding(.bottom, 586)
                    .padding(.leading, 59)
                    .padding(.trailing, 59.15)
                    
                    HStack {
                        Text("Login")
                            .font(
                                Font.custom("Inter", size: 32)
                                    .weight(.semibold)
                            )
                            .foregroundColor(.black)
                    }
                    .padding(.top, 284)
                    .padding(.bottom, 492)
                    .padding(.leading, 22)
                    .padding(.trailing, 267)
                    
                    HStack {
                        Text("Enter your email address and password here. ")
                            .font(Font.custom("Inter", size: 14))
                            .foregroundColor(Color(red: 0.11, green: 0.11, blue: 0.11))
                    }
                    .padding(.top, 328)
                    .padding(.bottom, 464)
                    .padding(.leading, 24)
                    .padding(.trailing, 68)
                    
                    VStack(alignment: .leading, spacing: 2) {
                        // Body 2 - reguler
                        Text("Email address")
                            .font(Font.custom("Inter", size: 12))
                            .foregroundColor(Color(red: 0.46, green: 0.46, blue: 0.46))
                            .frame(maxWidth: .infinity, minHeight: 12, maxHeight: 12, alignment: .leading)
                        
                        TextField("Email address", text: $emailAddress)
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
                    .padding(.top, 368)
                    .padding(.bottom, 396)
                    .padding(.vertical, 24)
                    
                    HStack(alignment: .center, spacing: 8) {
                        HStack {
                            if isSecure {
                                SecureField("Password", text: $password)
                                    .textContentType(.oneTimeCode)
                                    .font(
                                        Font.custom("Inter", size: 14)
                                            .weight(.medium)
                                    )
                                    .foregroundColor(Color(red: 0.11, green: 0.11, blue: 0.11))
                                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                            } else {
                                TextField("Password", text: $password)
                                    .font(
                                        Font.custom("Inter", size: 14)
                                            .weight(.medium)
                                    )
                                    .foregroundColor(Color(red: 0.11, green: 0.11, blue: 0.11))
                                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                            }
                        }
                        
                        HStack {
                            Button(action: {
                                isSecure.toggle()
                            }) {
                                Image("eye")
                                    .frame(width: 24, height: 24)
                            }
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
                    .padding(.top, 434)
                    .padding(.bottom, 330)
                    .padding(.vertical, 24)
                    
                    HStack(alignment: .center, spacing: 10) {
                        Text("Forgot password?")
                            .font(
                                Font.custom("Inter", size: 14)
                                    .weight(.medium)
                            )
                            .foregroundColor(.black)
                    }
                    .padding(.top, 506)
                    .padding(.bottom, 286)
                    .padding(.leading, 231)
                    .padding(.trailing, 24)
                    
                    HStack(alignment: .center, spacing: 10) {
                        Text("Login")
                            .font(Font.custom("Inter", size: 16))
                            .multilineTextAlignment(.center)
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                            .padding(.horizontal, 16)
                            .padding(.vertical, 12)
                    }
                    .frame(width: 327, height: 48, alignment: .center)
                    .background(Color(red: 0.38, green: 0.15, blue: 0.71))
                    .cornerRadius(24)
                    .shadow(color: Color(red: 0.7, green: 0.7, blue: 0.7).opacity(0.15), radius: 2, x: 0, y: 4)
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
                        HStack(alignment: .center, spacing: 10) {
                            Image("Brands 3")
                        }
                        .padding(8)
                        .background(.white)
                        .cornerRadius(12)
                        
                        HStack(alignment: .center, spacing: 10) {
                            Image("Brands 4")
                        }
                        .padding(8)
                        .background(.white)
                        .cornerRadius(12)
                        
                        HStack(alignment: .center, spacing: 10) {
                            Image("Brands-2")
                        }
                        .padding(8)
                        .background(.white)
                        .cornerRadius(12)
                    }
                    .padding(.top, 670)
                    .padding(.bottom, 102)
                    .padding(.leading, 100)
                    .padding(.trailing, 99)
                    
                    HStack(alignment: .top, spacing: 4) {
                        HStack {
                            Text("Didn’t have account?")
                                .font(Font.custom("Inter", size: 12))
                                .foregroundColor(.black)
                        }
                        
                        HStack {
                            NavigationLink (destination: Register()) {
                                Text("Register here")
                                    .font(Font.custom("Inter", size: 12))
                                    .foregroundColor(Color(red: 0.38, green: 0.15, blue: 0.71))
                            }
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
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}
