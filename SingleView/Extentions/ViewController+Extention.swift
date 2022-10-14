//
//  ViewController+Extention.swift
//  SingleView
//
//  Created by Alexander Koziaruk on 13.10.2022.
//

import UIKit

extension UIViewController {
    
    func presentAlert(title: String, text: String) {
        let alert = UIAlertController(title: title, message: text, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default))
        present(alert, animated: true)
    }
    
}
