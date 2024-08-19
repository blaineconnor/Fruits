//
//  FruitsApp.swift
//  Fruits
//
//  Created by Fatih Emre Sarman on 19.08.2024.
//

import SwiftUI

@main
struct FruitsApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}
