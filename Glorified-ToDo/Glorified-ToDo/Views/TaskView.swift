//
//  TasView.swift
//  Glorified-ToDo
//
//  Created by Martin Macháček on 12.03.2023
//

import SwiftUI

struct TaskView: View {
    let task: Task
    let showDescription: Bool
    var body: some View {
        HStack(spacing: 10) {
            
            Text("O")
            
            VStack(alignment: .leading) {
                Text(task.name)
                    .fontWeight(.semibold)
                
                if (showDescription) {
                    Text(task.additional_info)
                        .font(.system(size: 13))
                        .foregroundColor(.gray)
                }
                
            }
        }
        .padding(.all)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color(.systemGray6))
        .cornerRadius(15)
    }
}

struct TaskView_Previews: PreviewProvider {
    static var task = Task.sampleData[0]
    static var previews: some View {
        TaskView(task: task, showDescription: true)
    }
}
