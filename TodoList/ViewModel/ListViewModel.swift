//
//  ListViewModel.swift
//  TodoList
//
//  Created by Matheus Damasceno on 28/12/25.
//

import Foundation

class ListViewModel: ObservableObject {
    @Published var items: [ItemModel] = []
    
    init() {
        getItems()
    }
    
    private func getItems() {
        let items = [
            ItemModel(title: "First item", isCompleted: false),
            ItemModel(title: "Second item", isCompleted: false),
            ItemModel(title: "Third item", isCompleted: false),
            ItemModel(title: "Forth item", isCompleted: false)
        ]
        self.items.append(contentsOf: items)
    }
    
    private func onMove(indices: IndexSet, newOffset: Int) {
        items.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    private func onDelete(indexSet: IndexSet) {
        items.remove(atOffsets: indexSet)
    }
}
