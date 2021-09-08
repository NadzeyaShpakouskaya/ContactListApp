//
//  ContactViewController.swift
//  ContactListApp
//
//  Created by Nadzeya Shpakouskaya on 07/09/2021.
//

import UIKit

class ContactViewController: UIViewController {
    
    // MARK: - IBOutlets
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
    // MARK: - Public properties
    var contact: Contact!
    
    // MARK: - Override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpLabels()
        setUpNavigationBar()
    }
    
    // MARK: - Private methods
    private func setUpNavigationBar() {
        navigationItem.title = contact.fullName
    }
    
    private func setUpLabels() {
        phoneLabel.text = "Phone: \(contact.phone)"
        emailLabel.text = "Email: \(contact.email)"
    }
}
