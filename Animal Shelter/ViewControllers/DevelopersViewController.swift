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
    @IBOutlet var nextDevButton: UIButton!
    
    
    private let currentDev = Developer.getDevelopers()
    private var currentDeveloperIndex = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        devPhotoImage.layer.cornerRadius = 10
        
        devPhotoImage.image = currentDev[0].photo
        devFullNameText.text = currentDev[0].fullName
        devTelegramText.text = currentDev[0].telegram
        devDescriptionText.text = currentDev[0].telegram
        devDescriptionText.text = currentDev[0].description
    }
    
    @IBAction func nextButtonPressed() {

        if currentDeveloperIndex < currentDev.count - 1 {
            devPhotoImage.image = currentDev[currentDeveloperIndex].photo
            devFullNameText.text = currentDev[currentDeveloperIndex].fullName
            devTelegramText.text = currentDev[currentDeveloperIndex].telegram
            devDescriptionText.text = currentDev[currentDeveloperIndex].telegram
            devDescriptionText.text = currentDev[currentDeveloperIndex].description
            
            currentDeveloperIndex += 1
            print("currentDevindex = \(currentDeveloperIndex)")
            print("current arrayIndex = \(currentDev.count)")
            
        } else {
            currentDeveloperIndex = 0
            nextDevButton.titleLabel?.text = "Start Over?"
            devPhotoImage.image = currentDev.last?.photo
            devFullNameText.text = currentDev.last?.fullName
            devTelegramText.text = currentDev.last?.telegram
            devDescriptionText.text = currentDev.last?.telegram
            devDescriptionText.text = currentDev.last?.description
    
        }
        
    }
    
}
