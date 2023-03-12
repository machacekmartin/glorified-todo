//
//  CategoryPageView.swift
//  Glorified-ToDo
//
//  Created by Martin Macháček on 12.03.2023.
//

import SwiftUI

struct CategoryPageView: View {
    let category: Category
    
    var body: some View {
        Text(category.name).font(.title)
        
        
        ForEach(category.tasks) { task in
            Text(task.name)
        }
    }
}

struct CategoryPageView_Previews: PreviewProvider {
     static var previews: some View {
        CategoryPageView(category: Category.sampleData[0])
    }
}
