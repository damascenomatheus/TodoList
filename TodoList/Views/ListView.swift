//
//  ListView.swift
//  TodoList
//
//  Created by Matheus Damasceno on 25/12/25.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        List {
            ListRowView(title: "This is the first item")
        }
        .navigationTitle("To-do List 📝")
    }
}


#Preview {
    NavigationStack {
        ListView()
    }
}
