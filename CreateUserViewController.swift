//
//  ViewController.swift
//  SingleView
//
//  Created by Alexander Koziaruk on 13.10.2022.
//

import UIKit

class CreateUserViewController: UIViewController, UITextFieldDelegate {

    //MARK - Outlets
    
    @IBOutlet weak var userNameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var repeatPasswordTextField: UITextField!
    
    //MARK - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.dismissKeyboard))
        self.view.addGestureRecognizer(tapGesture)
    }

    //MARK - Actions
    
    @IBAction func createUserPressed() {

        guard let userName = userNameTextField.text, userName.isEmail else {
            presentAlert(title: "Error!", text: "Invalid Username!")
            return
        }
        
        guard let password = passwordTextField.text, password.isValidPassword else {
            presentAlert(title: "Error!", text: "Invalid Password!")
            return
        }
        
        guard let repeatPassword = repeatPasswordTextField.text, password == repeatPassword else {
            presentAlert(title: "Error!", text: "Password confirmation wrong!")
            return
        }
        
        presentAlert(title: "Success!!!", text: "")

    }
    
    @objc func dismissKeyboard () {
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        view.endEditing(true)
        return false
    }
}
