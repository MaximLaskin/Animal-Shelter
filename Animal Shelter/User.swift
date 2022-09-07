//
//  User.swift
//  Animal Shelter
//
//  Created by Leon Fridman on 9/7/22.
//

import Foundation

let usersData = DataManager()

struct User {
    let username: String
    let password: String
    
    let name: String
    let surname: String
}

extension User {
    
    static func getUsers() -> [User] {
        var users = [User]()
        
        for id in 0..<usersData.names.count {
            users.append(
                User(
                    username: usersData.usernames[id],
                    password: usersData.password[id],
                    name: usersData.names[id],
                    surname: usersData.suranmes[id]
                )
            )
        }
        return users
    }
}
