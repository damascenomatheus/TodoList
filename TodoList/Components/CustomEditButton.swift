//
//  CustomEditButton.swift
//  TodoList
//
//  Created by Matheus Damasceno on 26/12/25.
//

import SwiftUI

struct CustomEditButton: View {
    @Environment(\.editMode) private var editMode
    
    var body: some View {
        let modeValue = editMode?.wrappedValue

        Button {
            withAnimation {
                toggleAnimation(value: modeValue ?? .inactive)
            }
        } label: {
            Image(systemName: modeValue == .active ? "checkmark.circle.fill" : "pencil.circle.fill")
                .imageScale(.large)
                .foregroundStyle(modeValue == .active ? .green : .blue)
        }
    }
    
    private func toggleAnimation(value: EditMode) {
        editMode?.wrappedValue = value == .active ? .inactive : .active
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    CustomEditButton()
        .padding()
}
