//
//  ViewController+Extention.swift
//  SingleView
//
//  Created by Alexander Koziaruk on 13.10.2022.
//

import UIKit

extension UIViewController {
    
    func present(alert: Alert) {
        let alert = UIAlertController(title: alert.title, message: alert.message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Ok", style: .default))
        present(alert, animated: true)
    }
    
}

protocol Alert {
    var title: String { get }
    var message: String { get }
}
