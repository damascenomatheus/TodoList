//
//  HeadListView.swift
//  TodoList
//
//  Created by Matheus Damasceno on 26/12/25.
//

import SwiftUI

struct HeadListView: View {
    var body: some View {
        HStack {
            Text("To-do List 📝")
                .font(.largeTitle)
                .fontWeight(.bold)
            Spacer()
            EditButton()
            Image(systemName: "plus.app")
                .imageScale(.large)
        }
        .padding()
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    HeadListView()
}
