//
//  AddView.swift
//  TodoList
//
//  Created by Mert Durkaya on 25/02/2024.
//

import SwiftUI

struct AddView: View {
    
    @State private var text: String = ""
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Type something here...", text: $text)
                    .padding(.horizontal)
                    .frame(height: 48, alignment: .center)
                    .background(Color(.systemGray6))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 16)
                Button(action: {
                    print("Button Tapped")
                }, label: {
                    Text("Add")
                        .textCase(.uppercase)
                        .frame(maxWidth: .infinity)
                        .frame(height: 48)
                        .font(.headline)
                        .background(Color.accentColor)
                        .foregroundColor(.white)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                })
            }
            .padding()
        }
        .navigationTitle("Add Item 🔏")
    }
}

#Preview {
    NavigationStack {
        AddView()
    }
}
