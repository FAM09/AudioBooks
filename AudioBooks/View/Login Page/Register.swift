//
//  Register.swift
//  AudioBooks
//
//  Created by Faiz Azhari Mursid on 21/07/23.
//

import SwiftUI

struct Register: View {
    @State private var name: String = ""
    @State private var emailAddress: String = ""
    @State private var confirmPassword: String = ""
    @State private var password: String = ""
    @State private var isSecure: Bool = true
    
    var body: some View {
        NavigationView {
            ScrollView {
                ZStack {
                    Group {
                        HStack(alignment: .top, spacing: 5.40741) {
                            Image("logo-4")
                        }
                        .frame(width: 256.85187, height: 73, alignment: .top)
                        .padding(.top, 76)
                        .padding(.bottom, 663)
                        .padding(.leading, 24)
                        .padding(.trailing, 94.1)
                        
                        VStack {
                            Text("Register")
                              .font(
                                Font.custom("Inter", size: 32)
                                  .weight(.semibold)
                              )
                              .foregroundColor(.black)
                        }
                        .padding(.top, 174)
                        .padding(.bottom, 602)
                        .padding(.leading, 24)
                        .padding(.trailing, 223)
                        
                        
                        VStack {
                            Text("Complete this field to create an account")
                              .font(Font.custom("Inter", size: 14))
                              .foregroundColor(Color(red: 0.11, green: 0.11, blue: 0.11))
                              .padding(.top, 218)
                              .padding(.bottom, 574)
                              .padding(.leading, 24)
                              .padding(.trailing, 86)
                        }
                        
                    }
                    
                    Group {
                        VStack(alignment: .leading, spacing: 2) {
                            Text("Your name")
                              .font(Font.custom("Inter", size: 12))
                              .foregroundColor(Color(red: 0.46, green: 0.46, blue: 0.46))
                              .frame(maxWidth: .infinity, minHeight: 12, maxHeight: 12, alignment: .leading)
                
                            TextField("Name", text: $name)
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
                        .padding(.top, 256)
                        .padding(.bottom, 508)
                        .padding(.vertical, 24)
                        
                        VStack(alignment: .leading, spacing: 2) {
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
                        .padding(.top, 324)
                        .padding(.bottom, 440)
                        .padding(.vertical, 24)
                        
                        HStack(alignment: .center, spacing: 8) {
                            HStack {
                                VStack (alignment: .leading, spacing: 2){
                                    Text("Password")
                                      .font(Font.custom("Inter", size: 12))
                                      .foregroundColor(Color(red: 0.46, green: 0.46, blue: 0.46))
                                      .frame(maxWidth: .infinity, minHeight: 12, maxHeight: 12, alignment: .leading)
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
                        .padding(.top, 392)
                        .padding(.bottom, 372)
                        .padding(.vertical, 24)
                        
                        HStack (alignment: .center, spacing: 8) {
                            HStack {
                                VStack (alignment: .leading, spacing: 2){
                                    Text("Confirm password")
                                      .font(Font.custom("Inter", size: 12))
                                      .foregroundColor(Color(red: 0.46, green: 0.46, blue: 0.46))
                                      .frame(maxWidth: .infinity, minHeight: 12, maxHeight: 12, alignment: .leading)
                                    
                                    if isSecure {
                                        SecureField("Confirm password", text: $confirmPassword)
                                            .textContentType(.oneTimeCode)
                                            .font(
                                            Font.custom("Inter", size: 14)
                                            .weight(.medium)
                                            )
                                            .foregroundColor(Color(red: 0.11, green: 0.11, blue: 0.11))
                                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                                    } else {
                                        TextField("Confirm Password", text: $confirmPassword)
                                            .font(
                                            Font.custom("Inter", size: 14)
                                            .weight(.medium)
                                            )
                                            .foregroundColor(Color(red: 0.11, green: 0.11, blue: 0.11))
                                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
                                    }
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
                        .padding(.top, 460)
                        .padding(.bottom, 304)
                        .padding(.vertical, 24)
                        
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
                        .padding(.top, 536)
                        .padding(.bottom, 228)
                        .padding(.vertical, 24)
                    }
                    
                    Group {
                        HStack(alignment: .center, spacing: 10) {
                           Text("Register")
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
                        .padding(.top, 536)
                        .padding(.bottom, 228)
                        .padding(.vertical, 24)
                        
                        Text("or register with")
                          .font(Font.custom("Inter", size: 14))
                          .foregroundColor(.black)
                          .padding(.top, 622)
                          .padding(.bottom, 170)
                          .padding(.leading, 137)
                          .padding(.trailing, 137)
                        
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
                                Text("Already have an account?")
                                  .font(Font.custom("Inter", size: 12))
                                  .foregroundColor(.black)
                            }
                            
                            HStack {
                                NavigationLink (destination: Login()) {
                                    Text("Login here")
                                      .font(Font.custom("Inter", size: 12))
                                      .foregroundColor(Color(red: 0.38, green: 0.15, blue: 0.71))
                                }
                            }
                        }
                        .padding(.top, 730)
                        .padding(.bottom, 66)
                        .padding(.leading, 82)
                        .padding(.trailing, 83)
                    }
                }
                .frame(width: 375, height: 812)
                .background(.white)
                .cornerRadius(16)
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct Register_Previews: PreviewProvider {
    static var previews: some View {
        Register()
    }
}
