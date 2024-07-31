//
//  ProfessionInDetailView.swift
//  ProjectAlpha
//
//  Created by justCod1ng on 24/07/24.
//

import SwiftUI

struct ProfessionInDetailView: View {
    var body: some View {
        NavigationStack {
            List {
                Section("Salary Range") {
                    Text("Salary Range")
                }
                Section("Check Skills You Know"){
                    ForEach(0..<5, id: \.self) { _ in
                        HStack {
                            Label("Skill Name", systemImage: "circle")
                        }
                    }
                    NavigationLink {
                        
                    } label: {
                        Text("Learn Skills You Don't Know")
                            .foregroundStyle(.blue)
                    }
                }
            }
            .navigationTitle("Profession Name")
        }
    }
}

#Preview {
    ProfessionInDetailView()
}
