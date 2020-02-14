//
//  Customer.swift
//  C0780996_W2020_MID_TERM_MAD3004
//
//  Created by Raghav Bobal on 2020-02-14.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation

public class Customer: Bill
{
    private var customerId: Int
    private var firstName: String
    private var lastName: String
    private var fullName: String
    private var emailId: String
    private var billDictionary: String
    private var totalAmount: Float??
    
    init(billId: Int, billDate: Date?, billType: BillType,customerId: Int, firstName: String, lastName: String, fullName: String, emailId: String, billDictionary: String)
    {
    self.customerId = customerId
    self.firstName = firstName
    self.lastName = lastName
    self.fullName = fullName
    self.emailId = emailId
    self.billDictionary = billDictionary
    super.init(billId: billId, billDate: billDate, billType: billType)
    }
}

