//
//  ReminderAt.swift
//  Glorified-ToDo
//
//  Created by Šimon Koňár on 09/03/2023.
//

import Foundation
import SwiftUI

enum ReminderAt{
    case oneHour
    case twoHours
    case Day
    case Week
}


extension Color {
    static subscript(name: String) -> Color {
        switch name {
            case "green":
                return Color.green
            case "white":
                return Color.white
            case "black":
                return Color.black
            case "blue":
                return Color.cyan
            case "red":
                return Color.red
            default:
                return Color.accentColor
        }
    }
}
