//
//  DevelopersViewController.swift
//  Animal Shelter
//
//  Created by Leon Fridman on 9/9/22.
//

import UIKit

final class DevelopersViewController: UIViewController {

    // MARK: - IBOutlets
    
    @IBOutlet var devFullNameText: UILabel!
    @IBOutlet var devPhotoImage: UIImageView!
    @IBOutlet var devDescriptionText: UILabel!
    @IBOutlet var devTelegramText: UILabel!
    
    @IBOutlet var nextDevButton: UIButton!

    // MARK: - Private properties
    
    private var currentDeveloperIndex = 0
    private let currentDev = Developer.getDevelopers()
    
    // MARK: - Life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        devPhotoImage.layer.cornerRadius = 10
        showDev(with: currentDeveloperIndex)
    }
    
    

    // MARK: - Actions
    
    @IBAction func nextButtonPressed() {
        
        if currentDeveloperIndex < currentDev.count - 1 {
            currentDeveloperIndex += 1
            showDev(with: currentDeveloperIndex)
        }
    }
    
    private func showDev(with index: Int) {
        
        if currentDeveloperIndex == currentDev.count - 1 {
            nextDevButton.isHidden = true
        }
        
        devPhotoImage.image = currentDev[index].photo
        devFullNameText.text = currentDev[index].fullName
        devTelegramText.text = currentDev[index].telegram
        devDescriptionText.text = currentDev[index].telegram
        devDescriptionText.text = currentDev[index].description
    }
}
