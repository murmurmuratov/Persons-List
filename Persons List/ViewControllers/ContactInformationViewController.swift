//
//  ContactInformationViewController.swift
//  Persons List
//
//  Created by Александр Муратов on 13.02.2022.
//

import UIKit

class ContactInformationViewController: UIViewController {
    
    var contact: Contact!
    
    @IBOutlet var backgroundForInfoView: [UIView]!
    @IBOutlet var contactImageView: UIImageView!
    
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var mailLabel: UILabel!
    @IBOutlet var fullNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        backgroundForInfoView.forEach {
            $0.layer.cornerRadius = 8
        }
        contactImageView.makeRounded()
        
        contactImageView.image = UIImage(named: contact.name)
        fullNameLabel.text = contact.fullName
        phoneLabel.text = contact.phone
        mailLabel.text = contact.mail
    }
}

// MARK: - UIImageView
extension UIImageView {
    
    func makeRounded() {
        
        self.layer.cornerRadius = self.layer.bounds.width / 2
        self.clipsToBounds = true
    }
}
