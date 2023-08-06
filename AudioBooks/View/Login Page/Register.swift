//
//  Register.swift
//  AudioBooks
//
//  Created by Faiz Azhari Mursid on 21/07/23.
//

import SwiftUI
import UIKit

struct Register: View {
    @State private var name: String = ""
    @State private var emailAddress: String = ""
    @State private var confirmPassword: String = ""
    @State private var password: String = ""
    @State private var isSecure: Bool = true
    @State private var isMatch: Bool = true
    @State private var isRegistrationSuccessful: Bool = false
    @State private var destination: RegistrationStatus? = nil
    @State private var showSuccessPopup = false
    @State private var showFailurePopup = false
    
    var body: some View {
        NavigationView {
            ScrollView {
                ZStack {
                    Group {
                        Image("logo-4")
                        .frame(width: 256.85187, height: 73, alignment: .top)
                        .padding(.top, 76)
                        .padding(.bottom, 663)
                        .padding(.leading, 24)
                        .padding(.trailing, 94.1)
                        
                        Text("Register")
                            .font(
                                Font.custom("Inter", size: 32)
                                    .weight(.semibold)
                            )
                            .foregroundColor(.black)
                        .padding(.top, 174)
                        .padding(.bottom, 602)
                        .padding(.leading, 24)
                        .padding(.trailing, 223)
                        
                        Text("Complete this field to create an account")
                            .font(Font.custom("Inter", size: 14))
                            .foregroundColor(Color(red: 0.11, green: 0.11, blue: 0.11))
                            .padding(.top, 218)
                            .padding(.bottom, 574)
                            .padding(.leading, 24)
                            .padding(.trailing, 86)
                        
                        InputTextField(variable: $name, label: "Your name", placeHolder: "Name")
                        .padding(.top, 256)
                        .padding(.bottom, 508)
                        .padding(.vertical, 24)
                        
                        InputTextField(variable: $emailAddress, label: "Email address", placeHolder: "Email address")
                        .padding(.top, 324)
                        .padding(.bottom, 440)
                        .padding(.vertical, 24)
                        
                        InputPasswordField(variable: $password, placeHolder: "Password", label: "Password")
                        .padding(.top, 392)
                        .padding(.bottom, 372)
                        .padding(.vertical, 24)
                        
                        InputPasswordField(variable: $confirmPassword, placeHolder: "Confirm password", label: "Confirm password")
                        .padding(.top, 460)
                        .padding(.bottom, 304)
                        .padding(.vertical, 24)
                        
                        if password != confirmPassword {
                            Text("Password not match")
                                .font(.caption)
                                .fontWeight(.medium)
                                .foregroundColor(Color.red)
                                .padding(.top, 500)
                                .padding(.bottom, 280)
                                .padding(.leading, 24)
                                .padding(.trailing, 226.0)
                        }
                        
                    }
                    
                    Button("Register") {
                        isRegistrationSuccessful = addUser(n: name, e: emailAddress, p: password)
                        
                        if isRegistrationSuccessful {
                            showSuccessPopup = true
                        } else {
                            showFailurePopup = true
                        }
                    }
                    .font(Font.custom("Inter", size: 16))
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .frame(width: 327, height: 48, alignment: .center)
                    .background(Color(red: 0.38, green: 0.15, blue: 0.71))
                    .cornerRadius(24)
                    .shadow(color: Color(red: 0.7, green: 0.7, blue: 0.7).opacity(0.15), radius: 2, x: 0, y: 4)
                    .padding(.top, 536)
                    .padding(.bottom, 228)
                    .padding(.vertical, 24)
                    .background(
                        NavigationLink(
                            destination: Login(),
                            tag: .success,
                            selection: $destination,
                            label: { EmptyView() }
                        )
                        .hidden()
                    )
                    
                    Text("or register with")
                        .font(Font.custom("Inter", size: 14))
                        .foregroundColor(.black)
                        .padding(.top, 622)
                        .padding(.bottom, 170)
                        .padding(.leading, 137)
                        .padding(.trailing, 137)
                    
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
                        Text("Already have an account?")
                            .font(Font.custom("Inter", size: 12))
                            .foregroundColor(.black)
                        
                        NavigationLink (destination: Login()) {
                            Text("Login here")
                                .font(Font.custom("Inter", size: 12))
                                .foregroundColor(Color(red: 0.38, green: 0.15, blue: 0.71))
                        }
                    }
                    .padding(.top, 730)
                    .padding(.bottom, 66)
                    .padding(.leading, 82)
                    .padding(.trailing, 83)
                    
                    if showSuccessPopup {
                        StatusPopup(img: "checkmark.circle", txt: "Registrasi Success", clr: .green)
                            .transition(.scale)
                            .onAppear {
                                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                                    showSuccessPopup = false
                                    destination = .success
                                }
                            }
                    }
                    
                    if showFailurePopup {
                        StatusPopup(img: "exclamationmark.circle", txt: "Registrasi Gagal", clr: .red)
                            .transition(.scale)
                            .onAppear {
                                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                                    showFailurePopup = false
                                }
                            }
                    }
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

struct Register_Previews: PreviewProvider {
    static var previews: some View {
        Register()
    }
}
