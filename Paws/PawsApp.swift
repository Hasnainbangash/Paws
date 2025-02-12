//
//  PawsApp.swift
//  Paws
//
//  Created by Elexoft on 12/02/2025.
//

import SwiftUI
import SwiftData

@main
struct PawsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: Pet.self)
        }
    }
}
