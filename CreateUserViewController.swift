//
//  ViewController.swift
//  SingleView
//
//  Created by Alexander Koziaruk on 13.10.2022.
//

import UIKit

class CreateUserViewController: UIViewController {

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
            presentError(title: "Error!", text: "Invalid Username!")
            return
        }
        
        guard let password = passwordTextField.text, password.isValidPassword else {
            presentError(title: "Error!", text: "Invalid Password!")
            return
        }
        
        guard let repeatPassword = repeatPasswordTextField.text, password != repeatPassword else {
            presentError(title: "Error!", text: "Password confirmation wrong!")
            return
        }
    }
    
    @objc func dismissKeyboard () {
        userNameTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
        repeatPasswordTextField.resignFirstResponder()
    }
    
}

extension String {
    
    var isEmail: Bool {
        self.contains("@") && hasSuffix(".com")
    }
    
    var isValidPassword: Bool {
        let predicate = NSPredicate(format: "SELF MATCHES %@", "^(?=.*[A-Z])(?=.*[!@#$&*])(?=.*[0-9].*[0-9]).{6}$")
        return predicate.evaluate(with: self)
    }
    
}

extension UIViewController {
    func presentError(title: String, text: String) {
        let alert = UIAlertController(title: title,
                                      message: text,
                                      preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "Ok", style: .default))
        
        present(alert, animated: true)
    }
}
