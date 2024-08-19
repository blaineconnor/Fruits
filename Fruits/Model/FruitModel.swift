//
//  FruitModel.swift
//  Fruits
//
//  Created by Fatih Emre Sarman on 19.08.2024.
//

import SwiftUI

// MARK - FRUIT DATA MODEL

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
