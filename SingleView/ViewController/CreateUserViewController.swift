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

        guard let userName = userNameTextField.text, userName.isValidEmail else {
            present(alert: InvalidEmailAlert())
            return
        }
        
        guard let password = passwordTextField.text, password.isValidPassword else {
            present(alert: InvalidPasswordAlert())
            return
        }
        
        guard let repeatPassword = repeatPasswordTextField.text, password == repeatPassword else {
            present(alert: InvalidRepeatPasswordAlert())
            return
        }
        
        present(alert: SuccessAlert())

    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    //MARK - UITextFieldDelegate

    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        view.endEditing(true)
        return false
    }

}
