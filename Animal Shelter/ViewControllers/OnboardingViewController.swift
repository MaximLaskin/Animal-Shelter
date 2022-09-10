//
//  OnboardingViewController.swift
//  Animal Shelter
//
//  Created by Самир Кафаров on 10.09.2022.
//

import UIKit

class OnboardingViewController: UIViewController {
    
    // MARK: - IBOutlets
    
    @IBOutlet var progressBar: UIProgressView!
    
    @IBOutlet var firstStackView: UIStackView!
    @IBOutlet var secondStackView: UIStackView!
    @IBOutlet var thirdStackView: UIStackView!
    
    @IBOutlet var firstLabel: UILabel!
    @IBOutlet var secondLabel: UILabel!
    @IBOutlet var thirdLabel: UILabel!
    
    @IBOutlet var continueButton: UIButton!
    
    // MARK: - Private Properties
    private var stackIndex = 0 // index of current stack
    var userName = ""
    
    
    // MARK: - Life Cicle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        firstStackView.isHidden = false
        firstLabel.text = "приветствуем тебя \(userName) 😎"
        secondLabel.text = "Мы рады что принял такое важное решение - как усыновление животного 🥰"
        thirdLabel.text = "bla bla bla bla"
    }
    
    
    // MARK: - IBActions
    
 
    @IBAction func continueButtonPressed(_ sender: Any) {
        continueButton.setTitle("Continue", for: .normal)
        if firstStackView.isHidden == false {
            firstStackView.isHidden = true
            secondStackView.isHidden = false
            thirdStackView.isHidden = true
        } else if secondStackView.isHidden == false {
            thirdStackView.isHidden = false
            firstStackView.isHidden = true
            secondStackView.isHidden = true
        } else if thirdStackView.isHidden == false {
            performSegue(withIdentifier: "nextScreen", sender: nil)
            // мйукорй
            // йкдптйцкжпл т    
        }
    }
    

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    }

}

// MARK: - Extencions

extension OnboardingViewController {
    private func updateUI() {
        // Hide stacks
        for stackView in [firstStackView, secondStackView, thirdStackView] {
            stackView?.isHidden = true
        }
 
    }
}
