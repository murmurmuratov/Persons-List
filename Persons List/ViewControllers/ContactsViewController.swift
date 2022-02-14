//
//  ContactsViewController.swift
//  Persons List
//
//  Created by Александр Муратов on 13.02.2022.
//

import UIKit

class ContactsViewController: UITableViewController {
    
    var contacts: [Contact] = []
    
}

extension ContactsViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contacts.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "nameCell", for: indexPath)
        
        let contact = contacts[indexPath.row]
        cell.textLabel?.text = contact.fullName
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

// MARK: - Segue
extension ContactsViewController {
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let contactInformationVC = segue.destination as! ContactInformationViewController
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        contactInformationVC.contact = contacts[indexPath.row]
    }
}
