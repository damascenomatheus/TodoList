//
//  ListView.swift
//  TodoList
//
//  Created by Matheus Damasceno on 25/12/25.
//

import SwiftUI

struct ListView: View {
    @State var items: [ItemModel] = [
        ItemModel(title: "First item", isCompleted: false),
        ItemModel(title: "Second item", isCompleted: false),
        ItemModel(title: "Third item", isCompleted: false),
        ItemModel(title: "Forth item", isCompleted: false)
    ]
    
    var body: some View {
        VStack {
            HeadListView()
            List {
                ForEach(items) { item in
                    ListRowView(item: item)
                }
                .onDelete(perform: { indexSet in
                    items.remove(atOffsets: indexSet)
                })
                .onMove(perform: { indices, newOffset in
                    items.move(fromOffsets: indices, toOffset: newOffset)
                })
            }
            .listStyle(PlainListStyle())
        }
    }
}


#Preview {
    ListView()
}
