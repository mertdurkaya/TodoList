//
//  ItemModel.swift
//  TodoList
//
//  Created by Mert Durkaya on 25/02/2024.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
