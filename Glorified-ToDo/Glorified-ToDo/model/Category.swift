//
//  Category.swift
//  Glorified-ToDo
//
//  Created by Šimon Koňár on 09/03/2023.
//

import Foundation
import SwiftUI

struct Category: Identifiable {
    let id: UUID
    let name: String
    let color: String
    
    init(id: UUID = UUID(), name: String, color: String) {
        self.id = id
        self.name = name
        self.color = color
    }
}

extension Category {
    static let sampleData: [Category] =
    [
        Category(name: "Work", color: "blue"),
        Category(name: "Home", color: "green"),
        Category(name: "miscallaneous", color: "red")
    ]
}
