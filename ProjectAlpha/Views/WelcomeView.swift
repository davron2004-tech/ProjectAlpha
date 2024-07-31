//
//  ContentView.swift
//  ProjectAlpha
//
//  Created by Davron Abdukhakimov on 23/07/24.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationStack{
            VStack {
                Image(systemName: "globe")
                    .font(.system(size: 40))
                Spacer()
                NavigationLink{
                    TabsView()
                }label: {
                    Text("Register later")
                        .underline()
                        .font(.title2)
                        .foregroundStyle(.blue)
                        .padding()
                }
                .padding(.vertical,100)
                HStack{
                    NavigationLink{
                        SignUpView()
                    }label: {
                        Text("Sign Up")
                            .font(.title2)
                            .padding()
                            .foregroundStyle(.blue)
                            .fontWeight(.bold)
                            .overlay {
                                RoundedRectangle(cornerRadius: 16)
                                    .stroke(.blue,lineWidth: 5)
                            }
                    }
                    .clipShape(RoundedRectangle(cornerRadius: 16))
                    Spacer()
                    NavigationLink{
                        LogInView()
                    }label: {
                        Text("Log In")
                            .fontWeight(.bold)
                            .font(.title2)
                            .padding()
                            .foregroundStyle(.white)
                    }
                    .background(Color.blue)
                    .clipShape(RoundedRectangle(cornerRadius: 16))
                
                }
            }
            .padding()
        }
        
    }
}

#Preview {
    WelcomeView()
}
