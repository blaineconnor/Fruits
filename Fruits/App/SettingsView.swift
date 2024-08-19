//
//  SettingsView.swift
//  Fruits
//
//  Created by Fatih Emre Sarman on 19.08.2024.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTIES
    
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    // MARK: - BODY
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    // MARK: Section 1
                    
                    GroupBox(
                        label: 
                           SettingsLabelView(labelText: "Fruit", labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            Text("Most fruit is naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        }
                    }
                    
                    // MARK: Section 2
                    
                    GroupBox(
                        label: SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will se the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                    }
                    
                    Toggle(isOn: $isOnboarding) {
                        if isOnboarding {
                            Text("Restarted".uppercased())
                                .fontWeight(.bold)
                                .foregroundColor(.green)
                        } else {
                            Text("Restart".uppercased())
                                .fontWeight(.bold)
                                .foregroundColor(.secondary)
                        }
                    }
                    .padding()
                    .background(
                        Color(UIColor.tertiarySystemBackground)
                            .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                    )
                    
                    
                    // MARK: Section 3
                    GroupBox(
                        label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                    ) {
                       SettingsRowView(name: "Developer", content: "Fatih Emre Sarman")
                        SettingsRowView(name: "Designer", content: "Robert Petras")
                        SettingsRowView(name: "Compatibility", content: "iOS 16")
                        SettingsRowView(name: "Website", linkLabel: "Fatih Emre Sarman", linkDestination: "https://github.com/blaineconnor")
                        SettingsRowView(name: "SwiftUI", content: "2.0")
                        SettingsRowView(name: "Version", content: "1.1.0")
                    }//: Box
                    
                } //: VSTACK
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(
                    trailing: Button(action: {
                        presentationMode.wrappedValue.dismiss()
                    }) {
                        Image(systemName: "xmark")
                    }
                )                
                .padding()
            }//: SCROLL
        } //: NAVIGATION
    }
}

// MARK: - PREVIEW

#Preview {
    SettingsView()
        .preferredColorScheme(.dark)
}
