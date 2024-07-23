//
//  ProfessionsView.swift
//  ProjectAlpha
//
//  Created by justCod1ng on 23/07/24.
//

import SwiftUI

struct ProfessionsView: View {
    var body: some View {
        NavigationStack {
            List {
                Section("Currently Learning"){
                    currentlyLearningCard
                }
                
                Section("Professions"){
                    ForEach(0..<4, id: \.self) { _ in
                        NavigationLink {
                            EmptyView()
                        } label: {
                            professionCard
                        }
                        .tint(Color(.label))
                    }
                }
            }
            .navigationTitle("Professions")
        }
    }
    
    var professionCard: some View {
        HStack {
            VStack(alignment: .leading, spacing: 16){
                VStack(alignment: .leading){
                    Text("Profession Name").bold()
                    Text("Salary Range")
                }
                VStack(alignment: .leading){
                    Text("Vacancies: 14")
                }
            }
            Spacer()
        }
    }
    
    var currentlyLearningCard: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text("Skill Name").bold()
            ProgressView("Progress", value: 4, total: 10)
            HStack {
                Spacer()
                NavigationLink {
                    EmptyView()
                } label: {
                    HStack {
                        Spacer()
                        Text("Continue")
                    }
                }
                
            }
        }
    }
}

#Preview {
    ProfessionsView()
}
