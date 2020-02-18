//
//  Bill.swift
//  C0780996_W2020_MID_TERM_MAD3004
//
//  Created by Raghav Bobal on 2020-02-13.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation

public class Bill: IDisplayDelegate
{
    private var billId: Int
    private var billDate: Date
    private var totalBillAmount: Float?
    private var billType: BillType
    
    init(billId: Int, billDate: Date, billType: BillType)
    {
        self.billId = billId
        self.billDate = billDate
        self.billType = billType
    }
    
    
    func display()
    {
       print("*********************************************")
       print("\t\tBill ID: \(self.billId)")
       print("\t\tBill Date: \(String(describing: self.billDate))")
       print("\t\tBill Type: \(self.billType)")
    }

}
