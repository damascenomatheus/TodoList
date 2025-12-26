//
//  CustomAddButton.swift
//  TodoList
//
//  Created by Matheus Damasceno on 26/12/25.
//

import SwiftUI

struct CustomAddButton: View {
    @State private var showingModal = false
    
    var body: some View {
        Button {
            showingModal.toggle()
        } label: {
            Image(systemName: "plus.app.fill")
                .imageScale(.large)
                .foregroundStyle(.blue)
        }
        .sheet(isPresented: $showingModal, content: {
            AddView()
                .presentationDetents([.height(200)])
        })
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    CustomAddButton()
        .padding()
}
