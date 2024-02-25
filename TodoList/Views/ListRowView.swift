//
//  ListRowView.swift
//  TodoList
//
//  Created by Mert Durkaya on 25/02/2024.
//

import SwiftUI

struct ListRowView: View {
    
    let title: String
    
    var body: some View {
        HStack {
            Image(systemName: "checkmark.circle")
                .resizable()
                .frame(width: 20, height: 20)
            Text(title)
            Spacer()
        }
    }
}

#Preview {
    ListRowView(title: "test title")
}
