//
//  ContentView.swift
//  Paws
//
//  Created by Elexoft on 12/02/2025.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) var modelContext
    @Query private var pets: [Pet]
    
    var body: some View {
        NavigationStack {
            ScrollView {
                EmptyView()
            } //: SCROLLVIEW
            .overlay {
                if pets.isEmpty {
                    CustomContentUnavailableView(
                        icon: "dog.circle",
                        title: "No Pets",
                        description: "Add a new pet to get started."
                    )
                }
            }
        } //: NAVSTACK
    }
}

#Preview("Sample Data") {
    ContentView()
        .modelContainer(Pet.preview)
}

#Preview("No Data") {
    ContentView()
        .modelContainer(for: Pet.self, inMemory: true)
}
