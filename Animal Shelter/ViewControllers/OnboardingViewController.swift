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
    private var stackIndex: Float = 0.0 // index of current stack
    private var stackTotal: Float = 3.0 // count of stack Views
    var userName = ""
    
    
    // MARK: - Life Cicle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        firstStackView.isHidden = false
        firstLabel.text = "приветствуем тебя \(userName) 😎"
        secondLabel.text = "Мы рады что принял такое важное решение - как усыновление животного 🥰"
        thirdLabel.text = "Надеемся что с нашей помощью, ты найдешь друга, ведь он уже ждет тебя 🐶❤️🐱"
    }
    
    // MARK: - IBActions
 
    @IBAction func continueButtonPressed(_ sender: Any) {
        continueButton.setTitle("Continue", for: .normal)
        
        if firstStackView.isHidden == false {
            stackIndex += 0.5
            progressBar.setProgress(stackIndex, animated: true)
            progressBar.progress = Float(0.5)
            firstStackView.isHidden = true
            secondStackView.isHidden = false
            thirdStackView.isHidden = true
        } else if secondStackView.isHidden == false {
            stackIndex += 0.5
            progressBar.progress = Float(0.5)
            progressBar.setProgress(stackIndex, animated: true)
            thirdStackView.isHidden = false
            firstStackView.isHidden = true
            secondStackView.isHidden = true
        } else if thirdStackView.isHidden == false {
            performSegue(withIdentifier: "nextScreen", sender: nil)
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
        let totalProgress = Float(stackIndex) / Float(stackTotal)
        
        // set progress for progressBar
        progressBar.setProgress(totalProgress, animated: true)
    }
}
