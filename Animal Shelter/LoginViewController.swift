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
    
    @IBOutlet var forgotLoginButton: UIButton!
    @IBOutlet var forgotPassowordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let allUsers = User.getUsers()
        print(allUsers)

    }
    
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if loginTextField.text == "User" && passwordTextField.text == "Password"  {
            return true
        } else {
            showAlert(with: "Wrong Credentials", and: "Please check you login and password")
            return false
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


// MARK: - AlertController

extension LoginViewController {
    private func showAlert(with title: String, and massage: String) {
        let alert = UIAlertController(
            title: title,
            message: massage,
            preferredStyle: .alert)

        let okAction = UIAlertAction(title: "Ok", style: .default) { _ in
            self.passwordTextField.text = ""
        }

        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
