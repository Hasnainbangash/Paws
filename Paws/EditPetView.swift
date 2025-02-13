//
//  EditPetView.swift
//  Paws
//
//  Created by Elexoft on 13/02/2025.
//

import SwiftUI
import SwiftData

struct EditPetView: View {
    // We use this property binding to create bindings to mutable properties of a data modal objects that conforms to the observable protocol.
    @Bindable var pet: Pet
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    NavigationStack {
        do {
            let configuration = ModelConfiguration(isStoredInMemoryOnly: true)
            let container = try ModelContainer(for: Pet.self, configurations: configuration)
            let sampleData = Pet(name: "Daisy")
            
            return EditPetView(pet: sampleData)
                .modelContainer(container)
        } catch {
            fatalError("Could not load preview data. \(error.localizedDescription)")
        }
    }
}
