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

// MARK: - Life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addVerticalGradientLayer(
            topRed: 245,
            topGreen: 189,
            topBlue: 189,
            bottomRed: 245,
            bottomGreen: 189,
            bottomBlue: 189
        )

        imageView.image = UIImage(named: animal.nameAndBreed)
        imageView.layer.cornerRadius = imageView.bounds.height / 2

        congratulationLabel.text = "Вы приютили \(animal.name)"
    }

    // MARK: - IBAction
    
    @IBAction func developersButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: "showDewelopers", sender: nil)
    }

    @IBAction func doneButtonPressed(_ sender: UIButton) {
    }
}
