//
//  Task.swift
//  Glorified-ToDo
//
//  Created by Šimon Koňár on 09/03/2023.
//

import Foundation

struct Task: Identifiable {
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

extension Task {
    static let sampleData: [Task] =
    [
        Task(
            name: "Team project meeting",
            additional_info: "SCRUM meeting with colleagues to discuss weekly work",
            category: Category.sampleData[0],
            valid_until: ExpirationInfo(
                deadline: Date().addingTimeInterval(3600),
                reminder: true,
                reminderAt: ReminderAt.Week,
                is_done: false)
        ),
        Task(
            name: "Testing task",
            additional_info: "Another testing task, nothing to be suspicious about",
            category: Category.sampleData[0],
            valid_until: ExpirationInfo(
                deadline: Date().addingTimeInterval(3600),
                reminder: true,
                reminderAt: ReminderAt.Week,
                is_done: false)
        ),
        Task(
            name: "Add API",
            additional_info: "Add new API for the project",
            category: Category.sampleData[1],
            valid_until: ExpirationInfo(
                deadline: Date().addingTimeInterval(3600),
                reminder: true,
                reminderAt: ReminderAt.Week,
                is_done: false)
        ),
        Task(
            name: "Create local DB",
            additional_info: "Create local instance of database",
            category: Category.sampleData[2],
            valid_until: ExpirationInfo(
                deadline: Date().addingTimeInterval(3600),
                reminder: true,
                reminderAt: ReminderAt.Week,
                is_done: false)
        )
    ]
}
