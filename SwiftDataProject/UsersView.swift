//
//  UsersView.swift
//  SwiftDataProject
//
//  Created by Jamila Ruzimetova on 3/15/24.
//

import SwiftUI
import SwiftData

struct UsersView: View {
    @Query var users: [User]
    
    var body: some View {
        List(users) { user in
            NavigationLink(value: user) {
                Text(user.name)
                Text(user.city)
            }
        }
    }
}

#Preview {
    UsersView()
        .modelContainer(for: User.self)
}
