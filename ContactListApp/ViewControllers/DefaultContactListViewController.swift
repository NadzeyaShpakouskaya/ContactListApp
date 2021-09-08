//
//  DefaultContactListViewController.swift
//  ContactListApp
//
//  Created by Nadzeya Shpakouskaya on 07/09/2021.
//

import UIKit

class DefaultContactListViewController: UITableViewController {
    
    // MARK: - Public properties
    var contacts: [Contact]!

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contacts.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "shortContact", for: indexPath)
        
        let contact = contacts[indexPath.row]
        var content = cell.defaultContentConfiguration()
        
        content.text = contact.fullName
        content.textProperties.font = UIFont(name: "MuktaMahee Regular", size: 18)
            ?? UIFont.systemFont(ofSize: 18)
        cell.contentConfiguration = content

        return cell
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let contactVC = segue.destination as? ContactViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        
        let selectedContact  = contacts[indexPath.row]
        contactVC.contact = selectedContact
    }
}
