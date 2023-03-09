//
//  ExpirationInfo.swift
//  Glorified-ToDo
//
//  Created by Šimon Koňár on 09/03/2023.
//

import Foundation

class ExpirationInfo {
    let id: UUID
    let deadline: Date
    let reminder: Bool
    let reminderAt: ReminderAt?
    let is_done: Bool
    
    init(id: UUID = UUID(), deadline: Date, reminder: Bool, reminderAt: ReminderAt?, is_done: Bool) {
        self.id = id
        self.deadline = deadline
        self.reminder = reminder
        self.reminderAt = reminderAt
        self.is_done = is_done
    }
}
