//
//  successful order successful order SuccessfulOrderViewController.swift
//  Animal Shelter
//
//  Created by Swift on 11.09.2022.
//

import UIKit

final class SuccessfulOrderViewController: UIViewController {

    // MARK: - IBOutlets

    @IBOutlet weak var congratulationLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!

    var animal: Animal!
    var userName: String!

// MARK: - Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.image = UIImage(named: animal.nameAndBreed)
        imageView.layer.cornerRadius = imageView.bounds.height / 2

        congratulationLabel.text = "Вы приютили \(animal.name)"
    }

    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let userRoomVC = segue.destination as? UserRoomViewController else { return }
        userRoomVC.animal = animal
        userRoomVC.userName = userName
        
    }
    
    // MARK: - IBAction
    
    @IBAction func developersButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "showDewelopers", sender: nil)
    }

    @IBAction func doneButtonPressed(_ sender: UIButton) {
    }
}
