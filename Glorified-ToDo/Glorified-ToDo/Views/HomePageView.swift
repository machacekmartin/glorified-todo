//
//  HomePageView.swift
//  Glorified-ToDo
//
//  Created by Šimon Koňár on 10/03/2023.
//

import SwiftUI

struct HomePageView: View {
    let categories: [Category]
    let tasks: [Task]
    var body: some View {
        NavigationView {
            VStack {
                Rectangle()
                    .frame(height: 0)
                    .background(.ultraThinMaterial)
                
                ScrollView(.vertical) {
                    VStack(alignment: .leading) {
                        Text("Categories")
                            .foregroundColor(Color.gray)
                    
                        ScrollView(.horizontal) {
                            HStack {
                                ForEach(categories) { category in
                                    NavigationLink(destination: CategoryPageView(category: category)) {
                                        CategoryCardView(category: category)
                                    }
                                }
                            }.padding(.horizontal)
                        }.padding(EdgeInsets(top: 0, leading: -16, bottom: 0, trailing: -16))
                        
                        Text("Tasks for today")
                            .padding(.top)
                            .foregroundColor(Color.gray)

                        VStack {
                            ForEach(tasks) {
                                task in TaskView(task: task, showDescription: false)
                            }
                        }
                    }
                    .padding(.all)
                }
            }
            .navigationTitle(Text("Overview").font(.title))
        }
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView(categories: Category.sampleData, tasks: Task.sampleData)
    }
}
