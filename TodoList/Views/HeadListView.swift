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
            CustomEditButton()
            Image(systemName: "plus.app.fill")
                .imageScale(.large)
                .foregroundStyle(.blue)
        }
        .padding()
    }
}

struct CustomEditButton: View {
    @Environment(\.editMode) private var editMode
    
    var body: some View {
        Button {
            withAnimation {
                if editMode?.wrappedValue == .active {
                    editMode?.wrappedValue = .inactive
                } else {
                    editMode?.wrappedValue = .active
                }
            }
        } label: {
            Image(systemName: "pencil.circle.fill")
                .imageScale(.large)
                .foregroundStyle(.blue)
        }
    }
}



#Preview(traits: .sizeThatFitsLayout) {
    HeadListView()
}
