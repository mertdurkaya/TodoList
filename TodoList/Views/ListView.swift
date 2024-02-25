//
//  ListView.swift
//  TodoList
//
//  Created by Mert Durkaya on 25/02/2024.
//

import SwiftUI

struct ListView: View {
    
    @State private var items: [String] = ["First", "Second", "Third"]
    
    var body: some View {
        List {
            ForEach(items, id: \.self) { item in
                ListRowView(title: item)
            }
        }
        .navigationTitle("Todo List 📝")
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                EditButton()
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink("Add") {
                    AddView()
                }
            }
        }
    }
}

#Preview {
    NavigationStack {
        ListView()
    }
}

