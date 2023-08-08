//
//  User.swift
//  AudioBooks
//
//  Created by Faiz Azhari Mursid on 22/07/23.
//

import Foundation
import UIKit
import SwiftUI

var Items: [bookItem] = [
    bookItem(img: "book1", title: "The Tales Of Beedle The Bard", auth: "J.K Rowling", rating: "5.6"),
    bookItem(img: "book1", title: "The Tales Of Beedle The Bard", auth: "J.K Rowling", rating: "5.6"),
    bookItem(img: "book1", title: "The Tales Of Beedle The Bard", auth: "J.K Rowling", rating: "5.6"),
    bookItem(img: "book1", title: "The Tales Of Beedle The Bard", auth: "J.K Rowling", rating: "5.6"),
    bookItem(img: "book1", title: "The Tales Of Beedle The Bard", auth: "J.K Rowling", rating: "5.6")
]

struct bookItem: Identifiable {
    let id = UUID()
    let img: String
    let title: String
    let auth: String
    let rating: String
}

var Categories: [CategoryBook] = [
    CategoryBook(img: "novel", txt: "Novel"),
    CategoryBook(img: "science", txt: "Science"),
    CategoryBook(img: "comics", txt: "Comic"),
    CategoryBook(img: "story", txt: "Old Story"),
    CategoryBook(img: "health", txt: "Health"),
    CategoryBook(img: "psychology", txt: "Psychology"),
    CategoryBook(img: "biography", txt: "Biography")
]

struct CategoryBook: Identifiable {
    let id = UUID()
    let img: String
    let txt: String
}

var users: [User] = []

struct User: Equatable {
    let name: String
    let emailAddress: String
    let password: String
}

func addUser (n: String, e: String, p: String) -> Bool {
    let userToAppend = User(name: n, emailAddress: e, password: p)
    var isAppend: Bool = false
    users.append(userToAppend)
    
    if users.contains(where: { $0.name == userToAppend.name && $0.emailAddress == userToAppend.emailAddress && $0.password == userToAppend.password}) {
        isAppend = true
        
    }
    
    return isAppend
}

enum RegistrationStatus {
    case success
    case failed
}



func checkConfirmPassword(password: String, confirmPassword: String) -> Bool {
    if password == confirmPassword {
        return true
    } else {
        return false
    }
}

func activateScrollView() -> Bool {
    var isActive: Bool = false
    
    NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillShowNotification, object: nil, queue: .main) { notification in
        guard notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] is CGRect else {
            return
        }
        isActive = true
        
        // Lakukan penyesuaian tampilan saat keyboard muncul
        // Misalnya, menggeser tampilan ke atas sejauh tinggi keyboard
        // Anda juga dapat menganimasikannya untuk efek yang lebih halus
        // dengan menggunakan .animation modifier
    }
    
    NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillHideNotification, object: nil, queue: .main) { notification in
        isActive = false
    }
    
    return isActive
}
