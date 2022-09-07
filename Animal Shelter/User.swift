//
//  User.swift
//  Animal Shelter
//
//  Created by Leon Fridman on 9/7/22.
//

import Foundation


struct User {
    let username: String
    let password: String
    let name: String
    let surname: String
    
    static func getUser() -> User {
        User(
            username: "maxlex",
            password: "pass1",
            name: "Max",
            surname: "Lex"
        )
    }
}

