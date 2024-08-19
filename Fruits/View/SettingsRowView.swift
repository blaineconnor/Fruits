//
//  SettingsRowView.swift
//  Fruits
//
//  Created by Fatih Emre Sarman on 19.08.2024.
//

import SwiftUI

struct SettingsRowView: View {
    // MARK: - PROPERTIES
    
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    // MARK: - BODY
    
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(name)
                    .foregroundColor(.gray)
                Spacer()
                if (content != nil) {
                    Text(content!)
                } else if (linkLabel != nil && linkDestination != nil) {
                    Link(linkLabel!, destination: URL(string: linkDestination!)!)
                    Image(systemName: "arrow.up.right.square")
                        .foregroundColor(.pink)
                } else {
                    EmptyView()
                }
            }
        }
    }
}

// MARK: - PREVIEW

#Preview {
    SettingsRowView(name: "Developer", content: "Fatih Emre Sarman")
        .previewLayout(.fixed(width: 375, height: 60))
        .padding()
}
