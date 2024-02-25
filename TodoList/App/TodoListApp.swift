//
//  TodoListApp.swift
//  TodoList
//
//  Created by Mert Durkaya on 25/02/2024.
//

import SwiftUI

@main
struct TodoListApp: App {
    
    @StateObject private var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                ListView()
            }
            .environmentObject(listViewModel)
        }
    }
}
