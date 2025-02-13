//
//  EditPetView.swift
//  Paws
//
//  Created by Elexoft on 13/02/2025.
//

import SwiftUI
import SwiftData

struct EditPetView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    do {
        let configuration = ModelConfiguration(isStoredInMemoryOnly: true)
        let container = try ModelContainer(for: Pet.self, configurations: configuration)
        let sampleData = Pet(name: "Daisy")
        return EditPetView()
            .modelContainer(container)
    } catch {
        fatalError("Could not load preview data. \(error.localizedDescription)")
    }
}
