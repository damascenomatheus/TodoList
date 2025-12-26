//
//  ListView.swift
//  TodoList
//
//  Created by Matheus Damasceno on 25/12/25.
//

import SwiftUI

struct ListView: View {
    @State var items: [String] = [
        "First item",
        "Second item",
        "Third item",
        "Forth item",
    ]
    
    var body: some View {
        VStack {
            HeadListView()
            List {
                ForEach(items, id: \.self) { item in
                    ListRowView(title: item)
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
