//
//  AddView.swift
//  TodoList
//
//  Created by Mert Durkaya on 25/02/2024.
//

import SwiftUI

struct AddView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var listViewModel: ListViewModel
    @State private var alertTitle: String = ""
    @State private var showAlert: Bool = false
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
                Button(action: saveButtonTapped, label: {
                    Text("Add Item")
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
        .navigationTitle("Add New Item ✏️")
        .alert(isPresented: $showAlert, content: getAlert)
    }
    
    func saveButtonTapped() {
        if isTextProper() {
            listViewModel.addItem(title: text)
            presentationMode.wrappedValue.dismiss()
        }
    }
    
    func isTextProper() -> Bool {
        if text.count < 3 {
            alertTitle = "Text is too short!"
            showAlert.toggle()
            return false
        }
        return true
    }
    
    func getAlert() -> Alert {
        return Alert(title: Text("❌"), message: Text(alertTitle))
    }
}

#Preview {
    NavigationStack {
        AddView()
    }
    .environmentObject(ListViewModel())
}
