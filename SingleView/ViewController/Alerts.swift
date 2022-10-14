//
//  Alerts.swift
//  SingleView
//
//  Created by Alexander Koziaruk on 14.10.2022.
//

import Foundation

struct SuccessAlert: Alert {
    var title: String = "Success!!"
    var message: String = ""
}

struct InvalidEmailAlert: Alert {
    var title: String = "Invalid Username"
    var message: String = "Enter valid email"
}

struct InvalidPasswordAlert: Alert {
    var title: String = "Invalid Password"
    var message: String = "Password should contain:\n At-least 1 Uppercase character\nAt-least 1 Special character\nAt-least 2 numbers\nShould be at-least 6 characters long"
}

struct InvalidRepeatPasswordAlert: Alert {
    var title: String = "Invalid Repeated Password"
    var message: String = "Enter same password as in previous field"
}
