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
    
    // MARK: - Static methods
    static func generateContacts() -> [Contact] {
        let names = ["John", "Tim", "Ted", "Steven", "Anna", "Maria", "Kate", "David", "Mark", "Alex"].shuffled()
        let surnames = ["Smith", "Dow", "Isaacson", "Pennyworth", "Jenkins", "Fill", "Green", "O'Carrol", "Stevenson", "Path"].shuffled()
        let emails = ["aaaa@gmail.com", "bbbbb@gmail.com", "gdjadk@gmail.com", "fjslkdfh@gmail.com", "jflfjkefn@gmail.com", "fejdfv@gmail.com", "gerufvf@gmail.com", "nckdfh@gmail.com", "fvywefjy@gmail.com", " cadghscf@gmail.com" ].shuffled()
        let phones = ["+534757643", "+1682376", "241863458", "+4738957", "+7943569832", "+346785683", "+63894769", "+634798659", "+364816513398", "+523427615"].shuffled()
        
        var contacts: [Contact] = []
        for index in 0...names.count - 1 {
            let contact = Contact(
                name: names[index],
                surname: surnames[index],
                email: emails[index],
                phone: phones[index]
            )
            contacts.append(contact)
        }
        
        return contacts
    }
    
}
