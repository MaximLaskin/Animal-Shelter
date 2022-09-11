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
    var userName: String!
    
    var animal: Animal!
    var users = Developer.getDevelopers()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameLabel.text = userNameURVC
        setAnimalLabel()
        dogsOrderLabel.text = dogsOrderURVC
        catsOrderLabel.text = catsOrderURVC
        userNameLabel.text = "Хозяин: " + userName
        setUserImage()
        userImage.layer.cornerRadius = 10

        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let choiseVC = segue.destination as? ChoiceViewController else { return }
        choiseVC.userName = userName
    }
    
    private func setAnimalLabel() {
        if animal.animalType == Animal.AnimalType.dog {
            dogsOrderURVC = "Твой новый друг: \(animal.breed) \(animal.name)"
        } else {
            catsOrderURVC = "Твой новый друг: \(animal.breed) \(animal.name)"
        }
    }
    
    private func setUserImage() {
        for user in users {
            if user.name == userName {
                userImage.image = user.photo
            }
        }
    }
     

    @IBAction func orderMore() {
    }
    

    @IBAction func payAndExit() {
    }
    
}
