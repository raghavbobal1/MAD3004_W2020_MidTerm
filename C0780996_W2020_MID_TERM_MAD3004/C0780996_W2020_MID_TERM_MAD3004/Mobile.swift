//
//  Mobile.swift
//  C0780996_W2020_MID_TERM_MAD3004
//
//  Created by Raghav Bobal on 2020-02-13.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation

public class Mobile: Bill
{
    private var mobileManufacturerName: String
    private var planName: String
    private var mobileMumber: String
    private var mobileDataUsed: Float
    private var callMinutesUsed: Float
    
     init(billId: Int, billDate: Date?, billType: BillType,mobileManufacturerName: String, planName: String, mobileMumber: String, mobileDataUsed: Float, callMinutesUsed: Float)
    {
           self.mobileManufacturerName = mobileManufacturerName
           self.planName = planName
           self.mobileMumber = mobileMumber
           self.mobileDataUsed = mobileDataUsed
           self.callMinutesUsed = callMinutesUsed
           super.init(billId: billId, billDate: billDate, billType: billType)
       }

}
