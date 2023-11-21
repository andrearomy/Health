//
//  User.swift
//  Health
//
//  Created by Andrea Romano on 21/11/23.
//

import Foundation
import SwiftData

@Model class User {
    var name: String
    var surname: String
    
    init(name: String, surname: String) {
        self.name = name
        self.surname = surname
    }
}
