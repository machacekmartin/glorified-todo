//
//  CategoryCardView.swift
//  Glorified-ToDo
//
//  Created by Šimon Koňár on 10/03/2023.
//

import SwiftUI

struct CategoryCardView: View {
    let category: Category
    var body: some View {
        VStack(alignment: .leading){
            Text("4 unfinished tasks")
                .foregroundColor(Color.gray)
                .padding(.trailing)
                
            Spacer()
            HStack {
                Text(category.name)
                    .padding(.leading)
            }
            Spacer()
        }
        //.cornerRadius(20)
        
    }
}

struct CategoryCardView_Previews: PreviewProvider {
    static var category = Category.sampleData[0]
    static var previews: some View {
        CategoryCardView(category: category)
            .background(Color[category.color])
            //.previewLayout(.fixed(width: 200, height: 100))
            
    }
}
