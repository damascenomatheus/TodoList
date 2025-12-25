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
        List {
            ForEach(items, id: \.self) { item in
                ListRowView(title: item)
            }
        }
        .padding(.top)
        .listStyle(PlainListStyle())
    }
}


#Preview {
    ListView()
}
