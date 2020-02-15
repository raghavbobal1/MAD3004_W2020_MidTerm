//
//  Customer.swift
//  C0780996_W2020_MID_TERM_MAD3004
//
//  Created by Raghav Bobal on 2020-02-14.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation

public class Customer
{
    private var customerId: Int
    private var firstName: String
    private var lastName: String
    private var fullName: String
    private var emailId: String
    
    
    init(customerId: Int, firstName: String, lastName: String, fullName: String, emailId: String)
    {
        self.customerId = customerId
        self.firstName = firstName
        self.lastName = lastName
        self.fullName = fullName
        self.emailId = emailId
    }
}

