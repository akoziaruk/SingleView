//
//  Validation+Extention.swift
//  SingleView
//
//  Created by Alexander Koziaruk on 13.10.2022.
//

import Foundation

extension String {
    
    var isEmail: Bool {
        self.contains("@") && hasSuffix(".com")
    }
    
    var isValidPassword: Bool {
        let passwordRegex = "^(?=.*\\d)(?=.*[a-z])(?=.*[A-Z])(?=.*?[-!@#$%&*ˆ+=_])[0-9a-zA-Z!@#$%^&*()\\-_=+{}|?>.<,:;~`’]{6,}$"
        return NSPredicate(format: "SELF MATCHES %@", passwordRegex).evaluate(with: self)
    }
    
}
