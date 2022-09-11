//
//  OnboardingViewController.swift
//  Animal Shelter
//
//  Created by Самир Кафаров on 11.09.2022.
//

import UIKit

class OnboardingViewController: UIViewController {
    
    // MARK: - IBOutlets
    
    @IBOutlet var firstStackView: UIStackView!
    @IBOutlet var secondStackView: UIStackView!
    @IBOutlet var thirdStackView: UIStackView!
    @IBOutlet var forthStackView: UIStackView!
    
    @IBOutlet var firstLabel: UILabel!
    @IBOutlet var secondLabel: UILabel!
    @IBOutlet var thirdLabel: UILabel!
    @IBOutlet var forthLabel: UILabel!
    
    @IBOutlet var actionButton: UIButton!
    
    @IBOutlet var progressBar: UIProgressView!
    // MARK: - Private Properties
    
    private var stackIndex: Float = 0.0 // index of current stack
    private var stackTotal: Float = 3.0 // count of stack Views
    var userName = ""
    
    // MARK: - Live Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        
        // showing firstStackView as default
        firstStackView.isHidden = false
        
        firstLabel.text = "приветствуем тебя \(userName) 😎"
        secondLabel.text = "Мы рады что принял такое важное решение - как усыновление животного 🥰"
        thirdLabel.text = "Надеемся что с нашей помощью, ты найдешь друга, ведь он уже ждет тебя 🐶❤️🐱"
        forthLabel.text = "Приступим? "
    }
    
    // MARK: - IBActions
    
    @IBAction func actionButtonPressed(_ sender: Any) {
        actionButton.setTitle("Continue", for: .normal)
        
        if firstStackView.isHidden == false {
            stackIndex += 0.33
            progressBar.setProgress(0.33, animated: true)
            firstStackView.isHidden = true
            secondStackView.isHidden = false
            thirdStackView.isHidden = true
            forthStackView.isHidden = true
        } else if secondStackView.isHidden == false {
            stackIndex += 0.33
            progressBar.setProgress(0.7, animated: true)
            firstStackView.isHidden = true
            secondStackView.isHidden = true
            thirdStackView.isHidden = false
            forthStackView.isHidden = true
        } else if thirdStackView.isHidden == false {
            stackIndex += 0.34
            progressBar.setProgress(1, animated: true)
            firstStackView.isHidden = true
            secondStackView.isHidden = true
            thirdStackView.isHidden = true
            forthStackView.isHidden = false
        } else if forthStackView.isHidden == false {
            performSegue(withIdentifier: "showNext", sender: nil)
        }
    }
}
    
// MARK: - Extinsions

extension OnboardingViewController {
    private func updateUI() {
        // hide stack views
        for stackView in [firstStackView, secondStackView, thirdStackView, forthStackView]{
            stackView?.isHidden = true
        }
        let totalProgress = Float(stackIndex) / Float(stackTotal)
        
        // set progress for progressBar
        progressBar.setProgress(totalProgress, animated: true)
    }
}
