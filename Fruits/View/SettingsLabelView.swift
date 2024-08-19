//
//  SettingsLabelView.swift
//  Fruits
//
//  Created by Fatih Emre Sarman on 19.08.2024.
//

import SwiftUI

struct SettingsLabelView: View {
    
    // MARK: - PROPERTIES
    
    var labelText: String
    var labelImage: String
    
    // MARK: - BODY
    var body: some View {
        HStack {
        Text(labelText.uppercased()).fontWeight(.bold)
        Spacer()
        Image(systemName: labelImage)
    }
    }
}

// MARK: - PREVIEW

#Preview {
    SettingsLabelView(labelText: "Fruit", labelImage: "info.circle")
        .previewLayout(.sizeThatFits)
        .padding()
}
