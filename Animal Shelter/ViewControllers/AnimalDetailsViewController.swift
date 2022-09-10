//
//  AnimalDetailsViewController.swift
//  Animal Shelter
//
//  Created by Swift on 07.09.2022.
//

import UIKit

final class AnimalDetailsViewController: UIViewController {

// MARK: - IBOutlets

    @IBOutlet weak var nameAndBreedLabel: UILabel!

    @IBOutlet weak var sexLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!

    @IBOutlet weak var descriptionLabel: UILabel!

    @IBOutlet weak var shelterButton: UIButton!

    var animal: Animal!

// MARK: - Life cycle

    override func viewDidLoad() {
        super.viewDidLoad()

    }
}
