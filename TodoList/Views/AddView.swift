//
//  AddView.swift
//  TodoList
//
//  Created by Matheus Damasceno on 26/12/25.
//

import SwiftUI

struct AddView: View {
    @State var textFieldValue: String = ""
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        VStack {
            HStack {
                Text("Add an item")
                    .font(.largeTitle)
                    .bold()
                Spacer()
                Button {
                    dismiss.callAsFunction()
                } label: {
                    Image(systemName: "plus.circle.fill")
                        .resizable()
                        .frame(width: 28, height: 28)
                        .foregroundStyle(.green)
                }
            }
            
            TextField(text: $textFieldValue) {
                Text("Type what you need to do...")
            }
            .padding(.horizontal)
            .frame(height: 55)
            .background(Color.gray.opacity(0.2))
            .cornerRadius(12)
        }
        .padding(16)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    AddView()
}
