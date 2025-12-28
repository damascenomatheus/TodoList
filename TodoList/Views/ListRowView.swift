//
//  ListRowView.swift
//  TodoList
//
//  Created by Matheus Damasceno on 25/12/25.
//

import SwiftUI

struct ListRowView: View {
    let item: ItemModel
    
    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
            Text(item.title)
            Spacer()
        }
    }
}


#Preview("This is the first preview", traits: .sizeThatFitsLayout) {
    ListRowView(item: ItemModel(title: "This is the first item", isCompleted: false))
        .padding()
}

#Preview("This is the second preview", traits: .sizeThatFitsLayout) {
    ListRowView(item: ItemModel(title: "This is the second item", isCompleted: true))
        .padding()
}
