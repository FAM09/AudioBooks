//
//  Register.swift
//  AudioBooks
//
//  Created by Faiz Azhari Mursid on 21/07/23.
//

import SwiftUI
import UIKit
import Firebase

struct Register: View {
    @State private var name: String = ""
    @State private var emailAddress: String = ""
    @State private var confirmPassword: String = ""
    @State private var password: String = ""
    @State private var isSecure: Bool = true
    @State private var isMatch: Bool = true
    @State private var isRegistrationSuccessful: Bool? = nil
    @State private var destination: RegistrationStatus? = nil
    @State private var errorMessage = ""
    
    
    var body: some View {
        NavigationView {
            ScrollView {
                ZStack {
                    VStack(alignment: .leading, spacing: 0.0) {
                        VStack(alignment: .leading, spacing: 0.0) {
                            Image("logo-4")
                                .padding(.bottom, 25)
                            
                            Text("Register")
                                .font(
                                    Font.custom("Inter", size: 32)
                                        .weight(.semibold)
                                )
                                .foregroundColor(.black)
                                .padding(.bottom, 8)
                            
                            Text("Complete this field to create an account")
                                .font(Font.custom("Inter", size: 14))
                                .foregroundColor(Color(red: 0.11, green: 0.11, blue: 0.11))
                        }
                        .padding(.top, 76)
                        .padding(.bottom, 18)
                        
                        VStack(alignment: .center, spacing: 0.0) {
                            InputTextField(variable: $name, label: "Your name", placeHolder: "Name")
                                .padding(.bottom, 20)
                            
                            InputTextField(variable: $emailAddress, label: "Email address", placeHolder: "Email address")
                                .padding(.bottom, 20)
                            
                            InputPasswordField(variable: $password, placeHolder: "Password", label: "Password")
                                .padding(.bottom, 20)
                            
                            InputPasswordField(variable: $confirmPassword, placeHolder: "Confirm password", label: "Confirm password")
                                .padding(.bottom, 28)
                            
                            Button("Register") {
                                Auth.auth().createUser(withEmail: emailAddress, password: password) { authResult, error in
                                    if error != nil {
                                        print(error!)
                                        errorMessage = error?.localizedDescription ?? ""
                                        isRegistrationSuccessful = false
                                    } else {
                                        isRegistrationSuccessful = true
                                    }
                                }
                            }
                            .font(Font.custom("Inter", size: 16))
                            .multilineTextAlignment(.center)
                            .foregroundColor(.white)
                            .frame(width: 327, height: 48, alignment: .center)
                            .background(Color(red: 0.38, green: 0.15, blue: 0.71))
                            .cornerRadius(24)
                            .shadow(color: Color(red: 0.7, green: 0.7, blue: 0.7).opacity(0.15), radius: 2, x: 0, y: 4)
                            .padding(.bottom, 38)
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
                                .padding(.bottom, 28)
                            
                            LogoView()
                                .padding(.bottom, 20)
                            
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
                            .padding(.bottom, 66)
                        }
                    }
                    .frame(width: 327, height: 812)
                    .background(.white)
                    .cornerRadius(16)
                    
                    if isRegistrationSuccessful == true {
                        StatusPopup(img: "checkmark.circle", txt: "Registrasi Berhasil", clr: .green)
                            .transition(.scale)
                            .onAppear {
                                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                                    isRegistrationSuccessful = nil
                                    destination = .success
                                }
                            }
                    } else if isRegistrationSuccessful == false {
                        StatusPopup(img: "exclamationmark.circle", txt: "Registrasi Gagal", clr: .red)
                            .transition(.scale)
                            .onAppear {
                                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                                    isRegistrationSuccessful = nil
                                }
                            }
                    }
                }
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
