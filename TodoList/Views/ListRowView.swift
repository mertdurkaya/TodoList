//
//  ListRowView.swift
//  TodoList
//
//  Created by Mert Durkaya on 25/02/2024.
//

import SwiftUI

struct ListRowView: View {
    
    let item: ItemModel
    
    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.square" : "square")
                .resizable()
                .frame(width: 20, height: 20)
                .foregroundColor(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 6)
    }
}

#Preview {
    Group {
        ListRowView(item: ItemModel(title: "Test 1", isCompleted: false))
        ListRowView(item: ItemModel(title: "Test 2", isCompleted: true))
    }.previewLayout(.sizeThatFits)
    
}
