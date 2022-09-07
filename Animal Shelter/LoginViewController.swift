//
//  LoginViewController.swift
//  Animal Shelter
//
//  Created by Leon Fridman on 9/7/22.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet var loginTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet var versionLabel: UILabel!
    
    private let currentUser = User.getUsers().shuffled()
    private let appVersion = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        versionLabel.text = "version \(appVersion ?? "nil")"
        versionLabel.alpha = 0.4
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    
    // MARK: - IBActions
    
    @IBAction func forgotUsernameButtonPressed() {
        showAlert(
            with: "👋 No worries",
            and: "Your login is \(currentUser.first?.username ?? "Sam")"
        )
    }
    
    @IBAction func forgoPasswordButtonPressed() {
        showAlert(
            with: "🔐 Password",
            and: "Password for user \(currentUser.first?.username ?? "Sam") is \(currentUser.first?.password ?? "3333")"
        )
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if loginTextField.text == currentUser.first?.username ?? "Sam" && passwordTextField.text == currentUser.first?.password ?? "3333"  {
            return true
        } else {
            showAlert(with: "🥺 Wrong Credentials", and: "Please check login and password")
            return false
        }
    }
    
}


    // MARK: - AlertController

extension LoginViewController {
    private func showAlert(with title: String, and massage: String) {
        let alert = UIAlertController(
            title: title,
            message: massage,
            preferredStyle: .alert)

        let okAction = UIAlertAction(title: "Done", style: .default) { _ in
            self.passwordTextField.text = ""
        }

        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
