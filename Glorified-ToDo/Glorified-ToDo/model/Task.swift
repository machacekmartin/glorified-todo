//
//  Task.swift
//  Glorified-ToDo
//
//  Created by Šimon Koňár on 09/03/2023.
//

import Foundation

class Task {
    let id: UUID
    let name: String
    let additional_info: String
    let category: Category
    let valid_until: ExpirationInfo
    
    init(id: UUID = UUID(), name: String, additional_info: String, category: Category, valid_until: ExpirationInfo) {
        self.id = id
        self.name = name
        self.additional_info = additional_info
        self.category = category
        self.valid_until = valid_until
    }
}
