//
//  User.swift
//  AudioBooks
//
//  Created by Faiz Azhari Mursid on 22/07/23.
//

import Foundation

var users: [User] = []

struct User {
    let name: String
    let emailAddress: String
    let password: String
}


var isSecure: Bool? = true

func addUser (name: String, emailAddress: String, password: String) {
    users.append(User(name: name, emailAddress: emailAddress, password: password))
}
