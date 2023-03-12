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
        VStack(alignment: .leading, spacing: 10) {
            
            Text(category.name)
                .font(.system(size: 18, weight: .heavy, design: .default))
                .foregroundColor(Color.white)
                .frame(width: 180, height: 16, alignment: .leading)
                .truncationMode(.tail)
                .padding(.vertical)
            
            Text("4 tasks")
                .foregroundColor(Color.black)
                .padding(.bottom)
                
        }
        .padding(.horizontal)
        .background(Color[category.color])
        .cornerRadius(15)
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
