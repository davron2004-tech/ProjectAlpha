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
                
                Section("Related to profession") {
                    communityCard
                    vacancyCard
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
    
    var communityCard: some View {
        HStack {
            VStack(alignment: .leading, spacing: 16) {
                HStack {
                    Text("Profession Group").bold()
                    Spacer()
                    Text("Mon").italic().font(.callout)
                }
                VStack(alignment: .leading, spacing: 4) {
                    Text("#username")
                        .font(.callout)
                        .bold()
                    Text("This is an example message...")
                        .font(.callout)
                        .padding(.all, 4)
                        .background(.regularMaterial)
                        .clipShape(RoundedRectangle(cornerRadius: 4))
                }
            }
        }
    }
    
    var vacancyCard: some View {
        VStack(alignment: .leading, spacing: 16) {
            VStack(alignment: .leading) {
                HStack {
                    Text("Vacancy Name").bold()
                    Spacer()
                    Button {} label: {
                        Text("Save")
                            .padding(.horizontal, 8)
                            .background(.regularMaterial)
                            .clipShape(RoundedRectangle(cornerRadius: 6))
                    }
                }
                Text("Salary Range")
                    .font(.callout)
            }
            Text("Company Name")
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
