//
//  Item.swift
//  SwiftDataProject
//
//  Created by Jamila Ruzimetova on 3/15/24.
//

import Foundation
import SwiftData

@Model
class User {
    var name: String = "Anonumous"
    var city: String = "Unknown"
    var joinDate: Date = Date.now
    
    init(name: String, city: String, joinDate: Date) {
        self.name = name
        self.city = city
        self.joinDate = joinDate
    }
}
