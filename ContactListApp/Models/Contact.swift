//
//  Contact.swift
//  ContactListApp
//
//  Created by Nadzeya Shpakouskaya on 07/09/2021.
//

struct Contact {
    let name: String
    let surname: String
    let email: String
    let phone: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
}
