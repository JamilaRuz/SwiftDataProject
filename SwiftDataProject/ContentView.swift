//
//  ContentView.swift
//  SwiftDataProject
//
//  Created by Jamila Ruzimetova on 3/15/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    //    To add things easily
    @Environment(\.modelContext) private var modelContext
    @Query(sort: \User.name) private var users: [User]
    @State private var path = [User]()
    
    var body: some View {
        NavigationStack(path: $path) {
            VStack {
                UsersView()
            }
            .toolbar {
                ToolbarItem {
                    Button(action: addUser) {
                        Label("Add User", systemImage: "plus")
                    }
                }
            } //NavStack
            .navigationTitle("Users")
            .navigationDestination(for: User.self) { user in
                EditUserView(user: user)
            }
        }
    }//body
        
    private func addUser() {
        withAnimation {
            let newUser = User(name: "", city: "", joinDate: .now)
            modelContext.insert(newUser)
            path = [newUser]
        }
    }
} //struct
    
    
#Preview {
    ContentView()
        .modelContainer(for: User.self, inMemory: true)
}
