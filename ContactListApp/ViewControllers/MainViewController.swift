//
//  MainViewController.swift
//  ContactListApp
//
//  Created by Nadzeya Shpakouskaya on 07/09/2021.
//

import UIKit

class MainViewController: UITabBarController {
    
    let dataManager = DataManager()

    
    override func viewDidLoad() {
        super.viewDidLoad()

        let contacts = dataManager.fetchData()
        
        if let navigationVC = viewControllers?[0] as? UINavigationController {
            if let defaultVC = navigationVC.topViewController as? DefaultContactListViewController{
                defaultVC.contacts = contacts }
        }
        if let navigationVC = viewControllers?[1] as? UINavigationController {
            if let detailVC = navigationVC.topViewController as? DetailedContactListViewController{
                detailVC.contacts = contacts }
        }

    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
