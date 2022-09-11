//
//  UserRoomViewController.swift
//  Animal Shelter
//
//  Created by 19543442 on 11.09.2022.
//

import UIKit

class UserRoomViewController: UIViewController {

    @IBOutlet var userImage: UIImageView!
    @IBOutlet var userNameLabel: UILabel!
    @IBOutlet var dogsOrderLabel: UILabel!
    @IBOutlet var catsOrderLabel: UILabel!
    
    var userImageURVC: UIImage!
    var userNameURVC: String!
    var dogsOrderURVC: String!
    var catsOrderURVC: String!
    
    var animal: Animal!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameLabel.text = userNameURVC
        setAnimalLabel()

        // Do any additional setup after loading the view.
    }
    
    private func setAnimalLabel() {
        if animal.animalType == Animal.AnimalType.dog {
            dogsOrderLabel.text = "Твой новый друг: \(animal.breed) \(animal.name)"
        } else {
            catsOrderLabel.text = "Твой новый друг: \(animal.breed) \(animal.name)"
        }
    }
    

    
    @IBAction func orderMore() {
        
    }
    

    @IBAction func payAndExit() {
    }
    
}
