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
        let passwordRegex = "^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9].*?[0-9])(?=.*?[#?!@$%^&<>*~:`-]).{6,}$"
        return NSPredicate(format: "SELF MATCHES %@", passwordRegex).evaluate(with: self)
    }
    
}
