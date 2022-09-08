//
//  User.swift
//  Animal Shelter
//
//  Created by Leon Fridman on 9/7/22.
//

import Foundation

let usersData = DataManager()

struct User {
    let name: String
    let surname: String
    let username: String
    let password: String
}

extension User {
    
    static func getUsers() -> [User] {
        var users = [User]()
        
        for id in 0..<usersData.names.count {
            users.append(
                User(
                    name: usersData.usernames[id],
                    surname: usersData.surnames[id],
                    username: usersData.names[id],
                    password: usersData.passwords[id]
                )
            )
        }
        return users
    }
}
