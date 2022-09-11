//
//  successful order successful order SuccessfulOrderViewController.swift
//  Animal Shelter
//
//  Created by Swift on 11.09.2022.
//

import UIKit

class SuccessfulOrderViewController: UIViewController {

    @IBOutlet weak var congratulationLabel: UILabel!

    var animal: Animal!

    override func viewDidLoad() {
        super.viewDidLoad()

        congratulationLabel.text = "Спасибо! Вы приютили \(animal.name)"


    }


    @IBAction func doneButtonPressed(_ sender: UIButton) {
    }
}
