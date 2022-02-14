//
//  TabBarViewController.swift
//  Persons List
//
//  Created by Александр Муратов on 14.02.2022.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    let contacts = Contact.getContacts()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViewController(with: contacts)
    }
    
    private func setupViewController(with contacts: [Contact]) {
        
        let contactsVC = viewControllers?.first as! ContactsViewController
        let informationVC = viewControllers?.last as! InformationViewController
        
        contactsVC.contacts = contacts
        informationVC.contacts = contacts
    }
}
