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
            HStack {
                Image(systemName: "checkmark.circle")
                Text("Item number 1")
            }
        }
        .navigationTitle("To-do List 📝")
    }
}

#Preview {
    NavigationStack {
        ListView()
    }
}
