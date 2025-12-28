//
//  ListView.swift
//  TodoList
//
//  Created by Matheus Damasceno on 25/12/25.
//

import SwiftUI

struct ListView: View {
    @EnvironmentObject private var viewModel: ListViewModel
    
    var body: some View {
        VStack {
            HeadListView()
            List {
                ForEach(viewModel.items) { item in
                    ListRowView(item: item)
                }
                .onDelete(perform: viewModel.onDelete)
                .onMove(perform: viewModel.onMove)
            }
            .listStyle(PlainListStyle())
        }
    }
}


#Preview {
    ListView()
        .environmentObject(ListViewModel())
}
