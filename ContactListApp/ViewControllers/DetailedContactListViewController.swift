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
        contacts.count
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "detailedContact",
            for: indexPath
        )
        
        let contact = contacts[indexPath.section]
        var content = cell.defaultContentConfiguration()
        
        if indexPath.row == 0 {
            content.text = contact.email
            content.image = UIImage(systemName: "envelope.fill")
        } else {
            content.text = contact.phone
            content.image = UIImage(systemName: "phone.fill")
        }
        content.textProperties.font = UIFont(name: "MuktaMahee SemiBold", size: 15)
            ?? UIFont.systemFont(ofSize: 15)
        content.imageProperties.tintColor = .darkGray
        cell.contentConfiguration = content
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        contacts[section].fullName
    }
    
    // MARK: - Table view delegate
    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        let header = view as! UITableViewHeaderFooterView
        
        var contentConfig = header.defaultContentConfiguration()
        contentConfig.textProperties.font = UIFont(name: "MuktaMahee Bold", size: 18)
            ?? UIFont.systemFont(ofSize: 18)
        contentConfig.text = contacts[section].fullName
        contentConfig.textProperties.color = UIColor.white
        header.contentConfiguration = contentConfig
        
        var backgroundConfig = UIBackgroundConfiguration.listPlainHeaderFooter()
        backgroundConfig.backgroundColor = .systemGray
        header.backgroundConfiguration = backgroundConfig
    }
    
}
