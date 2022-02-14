//
//  Contact.swift
//  Persons List
//
//  Created by Александр Муратов on 13.02.2022.
//

import Foundation

struct Contact {
    let name: String
    let surname: String
    let phone: String
    let mail: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

extension Contact {
    static func getContacts() -> [Contact] {
        
        var contacts: [Contact] = []
        
        let dataManager = DataManager()
        let names = dataManager.names.shuffled()
        let surnames = dataManager.surnames.shuffled()
        let phones = dataManager.phones.shuffled()
        let mails = dataManager.mails.shuffled()
        
        for index in 0..<names.count {
            let contact = Contact(
                name: names[index],
                surname: surnames[index],
                phone: phones[index],
                mail: mails[index]
            )
            
            contacts.append(contact)
        }
        
        return contacts
    }
}

enum Persons: String {
    case phone = "phone"
    case mail = "tray"
}
