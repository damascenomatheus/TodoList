//
//  ItemModel.swift
//  TodoList
//
//  Created by Matheus Damasceno on 28/12/25.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
