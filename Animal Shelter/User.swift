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
}

    extension User {
        
        static func getUsers() -> [User] {
            var users = [User]()
            
            for user in 0..<randomNames.count {
                people.append(
                    Person(
                        name: randomNames[id],
                        surname: randomSurnames[id],
                        phone: randomPhones[id],
                        email: randomMails[id]
                    )
                )
            }
            return users
        }
    }
