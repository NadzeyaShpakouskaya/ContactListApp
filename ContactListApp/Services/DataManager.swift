//
//  DataManager.swift
//  ContactListApp
//
//  Created by Nadzeya Shpakouskaya on 07/09/2021.
//

import Foundation

class DataManager {
    // MARK: - Singleton
    static let shared = DataManager()
    
    // MARK: - Initializer
    private init() {}
    
    // MARK: - Public methods
    func fetchData() -> [Contact] {
        Contact.generateContacts()
    }    
}
