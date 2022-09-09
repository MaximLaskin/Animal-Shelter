//
//  Developers.swift
//  Animal Shelter
//
//  Created by Leon Fridman on 9/9/22.
//

import Foundation
import UIKit

let devsData = DevsDataManager()

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
        
        for id in 0..<devsData.devNames.count {
            developers.append(
                Developer(
                    name: devsData.devNames[id],
                    surname: devsData.devSurnames[id],
                    telegram: devsData.devTelegrams[id],
                    photo: devsData.devPhotos[id],
                    description: devsData.devDescriptions[id]
                )
            )
        }
        return developers
    }
}
