//
//  Contact.swift
//  PhoneBook
//
//  Created by Daniel Salib on 9/7/18.
//  Copyright © 2018 pennapps. All rights reserved.
//

import Foundation

class Contact {
    var firstName: String = ""
    var lastName: String = ""
    var company: String = ""
    var email: String = ""
    var phoneNumber: String = ""
    
    init(first: String, last: String, companyName: String, emailAdd: String, phone: String) {
        firstName = first
        lastName = last
        company = companyName
        email = emailAdd
        phoneNumber = phone
    }
}
