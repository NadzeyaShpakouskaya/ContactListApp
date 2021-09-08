//
//  MainViewController.swift
//  ContactListApp
//
//  Created by Nadzeya Shpakouskaya on 07/09/2021.
//

import UIKit

class MainViewController: UITabBarController {
    // MARK: - Private properties
    private let dataManager = DataManager()
    
    // MARK: - Override methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let contacts = dataManager.fetchData()
        
        guard let tabBarControllers = viewControllers else { return }
        
        for viewController in tabBarControllers {
            guard let navigationVC = viewController as? UINavigationController else { return }
            if let defaultVC = navigationVC.topViewController as? DefaultContactListViewController {
                defaultVC.contacts = contacts
            } else if let detailVC = navigationVC.topViewController as? DetailedContactListViewController {
                detailVC.contacts = contacts
            }
        }
    }
}
