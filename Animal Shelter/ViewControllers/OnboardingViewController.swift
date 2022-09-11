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
        setLabelFont()

        firstStackView.isHidden = false

        firstLabel.text = "Привет, \(userName) 😎"
        secondLabel.text = "Рады что готов найти новго друга 🥰"
        thirdLabel.text = "Ведь он уже ждет тебя 🐶❤️🐱"
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let choiseVC = segue.destination as? ChoiceViewController else { return }
        choiseVC.userName = userName
    }
    
    // MARK: - IBActions
    
    @IBAction func actionButtonPressed(_ sender: Any) {

        actionButton.setTitle("Далее", for: .normal)

        if firstStackView.isHidden == false {
            stackIndex += 0.5
            progressBar.setProgress(0.5, animated: true)
            firstStackView.isHidden = true
            secondStackView.isHidden = false
            thirdStackView.isHidden = true
        } else if secondStackView.isHidden == false {
            stackIndex += 0.5
            progressBar.setProgress(1, animated: true)
            firstStackView.isHidden = true
            secondStackView.isHidden = true
            thirdStackView.isHidden = false
        } else if thirdStackView.isHidden == false {
            performSegue(withIdentifier: "showNext", sender: nil)
        }
    }
}
    
// MARK: - Extinsions

extension OnboardingViewController {
    private func updateUI() {
    
        for stackView in [firstStackView, secondStackView, thirdStackView]{
            stackView?.isHidden = true
        }
        let totalProgress = Float(stackIndex) / Float(stackTotal)

        progressBar.setProgress(totalProgress, animated: true)
    }
    private func setLabelFont() {
        for label in [firstLabel, secondLabel, thirdLabel] {
            label?.numberOfLines = 0
            label?.shadowColor = .black
            label?.shadowOffset = CGSize(width: 0.3, height: 0.3 )
            label?.textColor = .darkGray
        }
    }
}
