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
    
    
    // MARK: - Life Cicle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //updateUI()
        firstLabel.text = "приветствуем тебя (currentUser) 😎"
        secondLabel.text = "Мы рады что принял такое важное решение - как усыновление животного 🥰"
        thirdLabel.text = "bla bla bla bla"
        
    }
    
    
    // MARK: - IBActions
    
 
    @IBAction func continueButtonPressed(_ sender: Any) {
        continueButton.setTitle("Start", for: .normal)
        
        
        // переход на следующий экран
        // performSegue(withIdentifier: "nextScreen", sender: nil)
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
