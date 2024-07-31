//
//  TabsView.swift
//  ProjectAlpha
//
//  Created by justCod1ng on 23/07/24.
//

import SwiftUI

struct TabsView: View {
    var body: some View {
        NavigationStack {
            TabView {
                ProfessionsView()
                    .tabItem { Label("Professions", systemImage: "list.clipboard") }
                Text("learning")
                    .tabItem { Label("Learning", systemImage: "sparkles") }
                Text("account")
                    .tabItem { Label("Account", systemImage: "person.circle.fill") }
            }
        }
        
    }
}

#Preview {
    TabsView()
}
