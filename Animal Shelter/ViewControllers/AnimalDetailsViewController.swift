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

    @IBOutlet weak var weightView: UIView!
    @IBOutlet weak var ageView: UIView!
    @IBOutlet weak var sexView: UIView!

    @IBOutlet weak var descriptionLabel: UILabel!

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var shelterButton: UIButton!

    var animal: Animal!

// MARK: - Life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    // MARK: - Setup Views

    private func setupLabelsValue() {

        imageView.image = UIImage(named: animal.nameAndBreed)

        sexLabel.text = animal.sex
        ageLabel.text = animal.age
        weightLabel.text = animal.weight
        nameAndBreedLabel.text = animal.nameAndBreed
        descriptionLabel.text = animal.description
    }

    private func setupView() {

        view.backgroundColor = .white

        [weightView, sexView, ageView].forEach{$0.layer.cornerRadius = 10}
        [weightView, sexView, ageView].forEach{$0?.backgroundColor = .clear}
        [weightView, sexView, ageView].forEach{$0.layer.borderWidth = 1}
        [weightView, sexView, ageView].forEach{$0.layer.borderColor = UIColor.gray.cgColor}
    }
}
