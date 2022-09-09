//
//  DevelopersViewController.swift
//  Animal Shelter
//
//  Created by Leon Fridman on 9/9/22.
//

import UIKit

class DevelopersViewController: UIViewController {
    
    @IBOutlet var devFullNameText: UILabel!
    @IBOutlet var devPhotoImage: UIImageView!
    @IBOutlet var devDescriptionText: UILabel!
    @IBOutlet var devTelegramText: UILabel!
    
    
    private let currentDev = Developer.getDevelopers().first
    
    override func viewDidLoad() {
        super.viewDidLoad()
        devPhotoImage.layer.cornerRadius = 10
        devPhotoImage.image = currentDev?.photo
        devFullNameText.text = currentDev?.fullName
        devTelegramText.text = currentDev?.telegram
        devDescriptionText.text = currentDev?.telegram
        devDescriptionText.text = currentDev?.description
    }
    
    
}
