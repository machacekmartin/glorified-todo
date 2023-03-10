//
//  HomePageView.swift
//  Glorified-ToDo
//
//  Created by Šimon Koňár on 10/03/2023.
//

import SwiftUI

struct HomePageView: View {
    let categories: [Category]
    var body: some View {
        VStack {
            Text("Welcome Back!")
                .font(.headline)
                .multilineTextAlignment(.leading)
            Spacer()
            ScrollView(.horizontal) {
                HStack {
                    ForEach(categories) { category in
                        CategoryCardView(category: category)
                            .frame(width: 200, height: 100)
                            .background(Color[category.color])
                            .cornerRadius(20)
                    }
                }
            
            }
            Spacer()
            VStack {
                
            }
                
        }
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView(categories: Category.sampleData)
    }
}
