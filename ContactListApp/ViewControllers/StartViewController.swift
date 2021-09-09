//
//  StartViewController.swift
//  ContactListApp
//
//  Created by Nadzeya Shpakouskaya on 08/09/2021.
//

import UIKit

class StartViewController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let contacts = DataManager.shared.fetchData()
        guard let tabBarController = self.topViewController as? UITabBarController else { return }
        guard let controllers = tabBarController.viewControllers else { return }
        
        for viewController in controllers {
            if let defaultVC = viewController as? DefaultContactListViewController {
                defaultVC.contacts = contacts
            } else if let detailVC = viewController as? DetailedContactListViewController {
                detailVC.contacts = contacts
            }
        }
    }
    
}
