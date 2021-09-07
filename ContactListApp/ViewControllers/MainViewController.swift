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
        dataManager.fetchData()
        // Do any additional setup after loading the view.
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
