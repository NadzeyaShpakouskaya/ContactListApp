//
//  DataManager.swift
//  ContactListApp
//
//  Created by Nadzeya Shpakouskaya on 07/09/2021.
//

import Foundation

class DataManager {
    // MARK: - Private properties

    private var names = ["John", "Tim", "Ted", "Steven", "Anna", "Maria", "Kate", "David", "Mark", "Alex"]
    private var surnames = ["Smith", "Dow", "Isaacson", "Pennyworth", "Jenkins", "Fill", "Green", "O'Carrol", "Stivenson", "Path"]
    private var emails = ["aaaa@gmail.com", "bbbbb@gmail.com", "gdjadk@gmail.com", "fjslkdfh@gmail.com", "jflfjkefn@gmail.com", "fejdfv@gmail.com", "gerufvf@gmail.com", "nckdfh@gmail.com", "fvywefjy@gmail.com", " cadghscf@gmail.com" ]
    private var phones = ["+534757643", "+1682376", "241863458", "+4738957", "+7943569832", "+346785683", "+63894769", "+634798659", "+364816513398", "+523427615"]
    
    // MARK: - Initializer
    init() {}
    
    // MARK: - Public methods
    func fetchData() -> [Contact] {
        generateContacts()
    }
    
    // MARK: - Private methods
    private func generateContacts() -> [Contact] {
        var contacts: [Contact] = []
        
        for _ in 1...names.count {
            names.shuffle()
            surnames.shuffle()
            emails.shuffle()
            phones.shuffle()
            
            let name = names.removeFirst()
            let surname = surnames.removeFirst()
            let email = emails.removeFirst()
            let phone = phones.removeFirst()
            
            let contact = Contact(
                name: name,
                surname: surname,
                email: email,
                phone: phone
            )
            contacts.append(contact)
        }
        
        return contacts
    }
}
