//
//  UserRoomViewController.swift
//  Animal Shelter
//
//  Created by 19543442 on 11.09.2022.
//

import UIKit

final class UserRoomViewController: UIViewController {

    // MARK: - IBOutlets

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

    // MARK: - Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let choiseVC = segue.destination as? ChoiceViewController else { return }
        choiseVC.userName = userName
    }

    // MARK: - Setup

    private func setupView() {
        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        userNameLabel.text = userNameURVC
        setAnimalLabel()
        dogsOrderLabel.text = dogsOrderURVC
        catsOrderLabel.text = catsOrderURVC
        userNameLabel.text = "Хозяин: " + userName
        setUserImage()
        userImage.layer.cornerRadius = 10
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

    // MARK: - IBAction

    @IBAction func orderMore() {
    }

    @IBAction func payAndExit() {
    }
}
