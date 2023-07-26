import SwiftUI

enum Destination {
    case page2
    case page3
}

struct RegistrationView: View {
    @State private var destination: Destination? = nil

    @State private var showSuccessPopup = false
    @State private var showFailurePopup = false

    var body: some View {
        NavigationView {
            VStack {
                // Tombol untuk registrasi
                Button("Registrasi") {
                    performRegistration()
                }
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
                .padding()

                // Pop-up berhasil registrasi
                if showSuccessPopup {
                    StatusPopup(img: "checkmark.circle", txt: "Registrasi Success", clr: .green)
                        .transition(.scale)
                        .onAppear {
                            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                                showSuccessPopup = false
                                destination = .page2
                            }
                        }
                }

                // Pop-up gagal registrasi
                if showFailurePopup {
                    PopupView(text: "Registrasi gagal", color: .red)
                        .onAppear {
                            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                                showFailurePopup = false
                            }
                        }
                }
            }
            .navigationBarTitle("Registrasi")
            .background(
                NavigationLink(
                    destination: Login(),
                    tag: .page2,
                    selection: $destination,
                    label: { EmptyView() }
                )
                .hidden()
            )
        }
    }

    // Fungsi untuk melakukan registrasi
    private func performRegistration() {
        // Simulasikan registrasi berhasil atau gagal
        let registrationSucceed = Bool.random()

        if registrationSucceed {
            showSuccessPopup = true
        } else {
            showFailurePopup = true
        }
    }
}

struct PopupView: View {
    let text: String
    let color: Color

    var body: some View {
        Text(text)
            .padding()
            .background(color)
            .foregroundColor(.white)
            .cornerRadius(8)
            .padding()
    }
}

struct LoginView: View {
    var body: some View {
        Text("Ini adalah halaman login")
            .navigationBarTitle("Login")
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
