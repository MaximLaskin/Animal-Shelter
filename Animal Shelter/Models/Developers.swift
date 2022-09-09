//
//  Developers.swift
//  Animal Shelter
//
//  Created by Leon Fridman on 9/9/22.
//

import Foundation
import UIKit

struct Developer {
    let name: String
    let surname: String
    let telegram: String
    let photo: UIImage
    
    let description: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

extension Developer {
    static func getDevelopers() -> [Developer] {
        var developers = [Developer]()
        
        for id in 0..<usersData.names.count {
            developers.append(
                Developer(
                    name: <#T##String#>,
                    surname: <#T##String#>,
                    telegram: <#T##String#>,
                    photo: <#T##UIImage#>,
                    description: <#T##String#>
                )
            )
        }
        return developers
    }
}
