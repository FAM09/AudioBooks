//
//  Login.swift
//  AudioBooks
//
//  Created by Faiz Azhari Mursid on 21/07/23.
//

import SwiftUI
import Firebase

struct Login: View {
    @State private var emailReset: String = ""
    @State private var emailAddress: String = ""
    @State private var password: String = ""
    @State private var isSecure: Bool = true
    @State private var isLoginSuccess: Bool? = nil
    @State private var destination: RegistrationStatus? = nil
    @State var showForgotPassword = false
    
    var body: some View {
        NavigationView {
            ScrollView {
                ZStack {
                    VStack(spacing: 0.0) {
                        Image("logo-4")
                            .padding(.bottom, 58)
                            .padding(.top, 153)
                        
                        HStack {
                            Text("Login")
                                .font(
                                    Font.custom("Inter", size: 32)
                                        .weight(.semibold)
                                )
                                .foregroundColor(.black)
                            
                            Spacer()
                        }
                        .padding(.bottom, 8)
                        .padding(.leading, 24)
                        
                        HStack {
                            Text("Enter your email address and password here. ")
                                .font(Font.custom("Inter", size: 14))
                                .foregroundColor(Color(red: 0.11, green: 0.11, blue: 0.11))
                            
                            Spacer()
                        }
                        .padding(.bottom, 20)
                        .padding(.leading, 24)
                        
                        InputTextField(variable: $emailAddress, label: "Email address", placeHolder: "Email address")
                            .padding(.bottom, 18)
                        
                        InputPasswordField(variable: $password, placeHolder: "Password", label: "Password")
                            .padding(.bottom, 24)
                        
                        HStack {
                            Spacer()
                            
                            Text("Forgot password?")
                                .onTapGesture {
                                    showForgotPassword.toggle()
                                    print(showForgotPassword)
                                }
                                .sheet(isPresented: $showForgotPassword){
                                    
                                    VStack {
                                        InputTextField(variable: $emailReset, label: "Email address", placeHolder: "Email address")
                                            .padding(.bottom, 18)
                                        
                                        ButtonBlock(txt: "Reset Password")
                                            .onTapGesture {
                                                Auth.auth().sendPasswordReset(withEmail: emailReset) { error in
                                                    if error != nil {
                                                        print(error!)
                                                    } else {
                                                        showForgotPassword.toggle()
                                                    }
                                                }
                                                print(showForgotPassword)
                                            }
                                    }
                                    
                                }
                                .font(
                                    Font.custom("Inter", size: 14)
                                        .weight(.medium)
                                )
                                .foregroundColor(.black)
                        }
                        .padding(.bottom, 16)
                        .padding(.trailing, 24)
                        
                        ButtonBlock(txt: "Login")
                            .onTapGesture {
                                Auth.auth().signIn(withEmail: emailAddress, password: password) { authResult, error in
                                    if error != nil {
                                        print(error!)
                                        isLoginSuccess = false
                                    } else {
                                        isLoginSuccess = true
                                    }
                                }
                            }
                            .background(
                                NavigationLink(
                                    destination: Home(),
                                    tag: .success,
                                    selection: $destination,
                                    label: { EmptyView() }
                                )
                                .hidden()
                            )
                        
                        Text("or Login with")
                            .font(Font.custom("Inter", size: 14))
                            .foregroundColor(.black)
                            .padding(.bottom, 30)
                        
                        LogoView()
                            .padding(.bottom, 20)
                        
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
                        .padding(.bottom, 66)
                    }
                    .frame(width: 375, height: 812)
                    .background(.white)
                    .cornerRadius(16)
                    
                    
                    if isLoginSuccess == true {
                        StatusPopup(img: "checkmark.circle", txt: "Login Berhasil", clr: .green)
                            .transition(.scale)
                            .onAppear {
                                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                                    isLoginSuccess = nil
                                    destination = .success
                                }
                            }
                    } else if isLoginSuccess == false {
                        StatusPopup(img: "exclamationmark.circle", txt: "Login Gagal", clr: .red)
                            .transition(.scale)
                            .onAppear {
                                DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                                    isLoginSuccess = nil
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

struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login()
    }
}


