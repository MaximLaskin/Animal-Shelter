//
//  successful order successful order SuccessfulOrderViewController.swift
//  Animal Shelter
//
//  Created by Swift on 11.09.2022.
//

import UIKit

class SuccessfulOrderViewController: UIViewController {

    @IBOutlet weak var congratulationLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!

    var animal: Animal!

    override func viewDidLoad() {
        super.viewDidLoad()

        imageView.image = UIImage(named: animal.nameAndBreed)
        imageView.layer.cornerRadius = imageView.bounds.height / 2

        congratulationLabel.text = "Вы приютили \(animal.name)"
    }
    
    @IBAction func developersButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "showDewelopers", sender: nil)
    }

    @IBAction func doneButtonPressed(_ sender: UIButton) {
    }
}
