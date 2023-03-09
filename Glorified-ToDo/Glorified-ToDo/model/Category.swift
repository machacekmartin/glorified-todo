//
//  Category.swift
//  Glorified-ToDo
//
//  Created by Šimon Koňár on 09/03/2023.
//

import Foundation
import SwiftUI

class Category {
    let id: UUID
    let name: String
    let color: Color
    
    init(id: UUID = UUID(), name: String, color: Color) {
        self.id = id
        self.name = name
        self.color = color
    }
}
