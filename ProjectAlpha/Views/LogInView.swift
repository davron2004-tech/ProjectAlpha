//
//  LogInScreen.swift
//  ProjectAlpha
//
//  Created by Davron Abdukhakimov on 23/07/24.
//

import SwiftUI

struct LogInView: View {
    @State var email = ""
    @State var password = ""
    var body: some View {
        NavigationStack{
            VStack{
                Image(systemName: "globe")
                    .font(.system(size: 40))
                Spacer()
                TextField("Email", text: $email)
                    .padding()
                    .overlay {
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(.blue,lineWidth: 2)
                    }
                TextField("Password", text: $password)
                    .padding()
                    .overlay {
                        RoundedRectangle(cornerRadius: 20)
                            .stroke(.blue,lineWidth: 2)
                    }
                    .padding(.vertical)
                NavigationLink{
                    TabsView()
                }label: {
                    Text("Continue")
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
    LogInView()
}
