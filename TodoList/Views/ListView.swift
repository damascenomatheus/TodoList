//
//  ListView.swift
//  TodoList
//
//  Created by Matheus Damasceno on 25/12/25.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        
        @State var items: [String] = [
            "First item",
            "Second item",
            "Third item",
            "Forth item",
        ]
        
        List {
            ForEach(items, id: \.self) { item in
                ListRowView(title: item)
            }
        }
        .navigationTitle("To-do List 📝")
        .navigationBarItems(
            leading: EditButton(),
            trailing: NavigationLink(destination: {
                Text("Destination")
            }, label: {
                Text("Add")
            })
        )
    }
}


#Preview {
    NavigationStack {
        ListView()
    }
}
