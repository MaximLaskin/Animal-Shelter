//
//  UsersData.swift
//  Animal Shelter
//
//  Created by Leon Fridman on 9/7/22.
//

import Foundation
import UIKit

class UsersDataManager
{
    let names = [
        "Max", "Pavel", "Tanya", "Sam", "Leo"
    ]
    
    let surnames = [
        "Einstein", "McLain", "Travolta", "Jobs", "Cook"
    ]
    
    let usernames = [
        "Leo", "Pavel", "Max", "Tanya", "Sam"
    ]
    
    let passwords = [
        "0000", "1111", "2222", "3333", "4444"
    ]
}

class DevsDataManager {
    
    let devNames = [
        "Maxim", "Pavel", "Tanya", "Sam", "Leo"
    ]
    
    let devSurnames = [
        "Genius", "S.", "Jobs", "Kafarov", "Anonim"
    ]
    
    let devTelegrams = [
        "@maximlaskin", "@Pavel_Sh", "@tatyanaKosMe", "@whereismytea", "@kurwakotek"
    ]
    
    let devPhotos =
    [UIImage(named:  "dev_max"), UIImage(named: "dev_pavel"), UIImage (named: "dev_tanya"), UIImage (named: "dev_sam"), UIImage(named: "dev_leo")
    ]
    
    let devDescriptions = [
        "Teamlead, организовал работу, собрал команду, придумал Xcode",
        "Запилил много экранов, спец по tableView, мастер сегвеев",
        "Придумала идею приложения, победила Git, написала 1000 строк кода",
        "Senior iOS Developer. Vapor, NodeJS, Git, Realm, MySql и еще много всего нужно учить",
        "Рисовал картинки, делал кнопку красивой, вызывал алерты"
    ]
}
