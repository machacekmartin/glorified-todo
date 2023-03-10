//
//  Glorified_ToDoApp.swift
//  Glorified-ToDo
//
//  Created by Šimon Koňár on 09/03/2023.
//

import SwiftUI

@main
struct Glorified_ToDoApp: App {
    var body: some Scene {
        WindowGroup {
            HomePageView(categories: Category.sampleData)
        } 
    }
}
