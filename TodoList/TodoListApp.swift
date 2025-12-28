//
//  TodoListApp.swift
//  TodoList
//
//  Created by Matheus Damasceno on 25/12/25.
//

import SwiftUI

@main
struct TodoListApp: App {
    @StateObject private var viewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            ListView()
        }
        .environmentObject(viewModel)
    }
}
