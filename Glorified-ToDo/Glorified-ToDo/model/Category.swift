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
    
    public var tasks: [Task] {
        get{
            return Task.sampleData.filter(({ self.id == $0.category.id }))
        }
    }
}

extension Category {
    static let sampleData: [Category] =
    [
        Category(name: "Work", color: "blue"),
        Category(name: "Home", color: "green"),
        Category(name: "Miscellaneous and other stuff", color: "red")
    ]
}
