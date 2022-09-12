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
    var userName: String!

// MARK: - Life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupLabels()
    }

    // MARK: - Setup Views

    private func setupLabels() {

        imageView.image = UIImage(named: animal.nameAndBreed)
        imageView.layer.cornerRadius = 10

        sexLabel.text = animal.sex
        ageLabel.text = animal.age
        weightLabel.text = animal.weight
        nameAndBreedLabel.text = animal.nameAndBreed
        descriptionLabel.text = animal.description
    }

    private func setupView() {

        view.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)

        [weightView, sexView, ageView].forEach{$0.layer.cornerRadius = 10}
        [weightView, sexView, ageView].forEach{$0?.backgroundColor = .clear}
        [weightView, sexView, ageView].forEach{$0.layer.borderWidth = 1}
        [weightView, sexView, ageView].forEach{$0.layer.borderColor = UIColor.gray.cgColor}
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let successVC = segue.destination as? SuccessfulOrderViewController else { return }
        successVC.animal = animal
        successVC.userName = userName
    }
}
