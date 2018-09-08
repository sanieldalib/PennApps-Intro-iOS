//
//  db.swift
//  PhoneBook
//
//  Created by Daniel Salib on 9/7/18.
//  Copyright © 2018 pennapps. All rights reserved.
//

import Foundation

struct db {
    static var contacts: [Contact] = []
    
//    func addContact(newContact: Contact){
//        db.contacts.append(newContact)
//    }

    static func addContact(newContact: Contact){
        db.contacts.append(newContact)
    }
}
