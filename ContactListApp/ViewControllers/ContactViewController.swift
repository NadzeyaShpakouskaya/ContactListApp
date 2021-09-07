//
//  ContactViewController.swift
//  ContactListApp
//
//  Created by Nadzeya Shpakouskaya on 07/09/2021.
//

import UIKit

class ContactViewController: UIViewController {
    
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    var contact: Contact!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpLabels()
        setUpNavigationBar()
    }
    
    private func setUpNavigationBar() {
        navigationItem.title = contact.fullName

    }
    
    private func setUpLabels() {
        phoneLabel.text = "Phone: \(contact.phone)"
        emailLabel.text = "Email: \(contact.email)"
    }
}
