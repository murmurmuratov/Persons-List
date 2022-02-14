//
//  InformationViewController.swift
//  Persons List
//
//  Created by Александр Муратов on 13.02.2022.
//

import UIKit

class InformationViewController: UITableViewController {
    var contacts: [Contact] = []
}

extension InformationViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        contacts.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let contact = contacts[section].fullName
        
        return contact
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "phoneAndMailCell", for: indexPath)
        let contact = contacts[indexPath.section]
        
        switch indexPath.row {
        case 0:
            cell.textLabel?.text = contact.phone
            cell.imageView?.image = UIImage(systemName: Persons.phone.rawValue)
        case 1:
            cell.textLabel?.text = contact.mail
            cell.imageView?.image = UIImage(systemName: Persons.mail.rawValue)
        default: break
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
