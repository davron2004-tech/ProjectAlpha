//
//  SignUpScreen.swift
//  ProjectAlpha
//
//  Created by Davron Abdukhakimov on 23/07/24.
//

import SwiftUI

struct SignUpView: View {
    @State var firstName = ""
    @State var lastName = ""
    @State var email = ""
    @State var phoneNumber = ""
    @State var password = ""
    @State var repeatedPassword = ""
    @State var isEmail = false
    var body: some View {
        NavigationStack{
            VStack{
                Image(systemName: "globe")
                    .font(.system(size: 40))
                Spacer()
                TextField("First Name", text: $email)
                    .padding()
                    .overlay {
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(.blue,lineWidth: 2)
                    }
                TextField("Last Name", text: $email)
                    .padding()
                    .overlay {
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(.blue,lineWidth: 2)
                    }
                if isEmail{
                    TextField("Email", text: $email)
                        .padding()
                        .overlay {
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(.blue,lineWidth: 2)
                        }
                }
                else{
                    TextField("Phone Number", text: $email)
                        .padding()
                        .overlay {
                            RoundedRectangle(cornerRadius: 20)
                                .stroke(.blue,lineWidth: 2)
                        }
                }
                HStack{
                    Button{
                        isEmail = true
                    }label: {
                        Text("Use email instead")
                            .underline()
                    }
                    Spacer()
                }
                
                TextField("Password", text: $password)
                    .padding()
                    .overlay {
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(.blue,lineWidth: 2)
                    }
                TextField("Re-Enter Password", text: $password)
                    .padding()
                    .overlay {
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(.blue,lineWidth: 2)
                    }
                    .padding(.vertical)
                NavigationLink{
                    
                }label: {
                    Text("Register")
                        .fontWeight(.bold)
                        .font(.title2)
                        .padding()
                        .foregroundStyle(.white)
                }
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .clipShape(RoundedRectangle(cornerRadius: 16))
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    SignUpView()
}
