//
//  CustomContentUnavailableView.swift
//  Paws
//
//  Created by Elexoft on 12/02/2025.
//

import SwiftUI

struct CustomContentUnavailableView: View {
    
    var icon: String
    var title: String
    var description: String
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    CustomContentUnavailableView(
        icon: "cat.circle",
        title: "No Photo",
        description: "Add a photo to get started."
    )
}
