//
//  DetailedContactListViewController.swift
//  ContactListApp
//
//  Created by Nadzeya Shpakouskaya on 07/09/2021.
//

import UIKit

class DetailedContactListViewController: UITableViewController {
    // MARK: - Public properties
    var contacts: [Contact]!

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return contacts.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "detailedContact", for: indexPath)
        
        let contact = contacts[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
        if indexPath.row == 0 {
            content.text = contact.email
            content.image = UIImage(systemName: "envelope.fill")
        } else {
            content.text = contact.phone
            content.image = UIImage(systemName: "phone.fill")
        }
        
        cell.contentConfiguration = content
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let contact = contacts[section]
        return contact.fullName
    }

}
