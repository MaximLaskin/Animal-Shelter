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
        
        loginTextField.setupLeftImage(imageName: "User")
        passwordTextField.setupLeftImage(imageName: "Lock")
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


    //MARK: - Set Image on left of text fields

extension UITextField {

    func setupLeftImage(imageName:String){
       let imageView = UIImageView(frame: CGRect(x: 10, y: 10, width: 20, height: 20))
       imageView.image = UIImage(named: imageName)
       let imageContainerView: UIView = UIView(frame: CGRect(x: 0, y: 0, width: 30, height: 40))
       imageContainerView.addSubview(imageView)
       leftView = imageContainerView
       leftViewMode = .always
       self.tintColor = .lightGray
     }

  }
