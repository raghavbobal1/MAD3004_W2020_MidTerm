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
    private var mobileDataUsed: Double
    private var callMinutesUsed: Double
    var type: BillType = BillType.Mobile

    
     init(billId: Int, billDate: Date?, billType: BillType,customerId: Int,mobileManufacturerName: String, planName: String, mobileMumber: String, mobileDataUsed: Double, callMinutesUsed: Double)
    {
           self.mobileManufacturerName = mobileManufacturerName
           self.planName = planName
           self.mobileMumber = mobileMumber
           self.mobileDataUsed = mobileDataUsed
           self.callMinutesUsed = callMinutesUsed
           super.init(billId: billId, billDate: billDate, billType: billType, customerId: customerId)
    }

    func billCalculation() -> Double
    {
        var monthlyBill: Double = 0.0
        var price: Double = 0.0
        var price1: Double = 0.0
        
         if (callMinutesUsed < 300)
           {
                price += 35
           }
         else if (callMinutesUsed > 300 && callMinutesUsed < 500 )
           {
                price += 50
           }
         else
           {
            price = 0.15 * callMinutesUsed
           }
        
         if (mobileDataUsed < 5)
           {
                price1 += 50
           }
         else if (mobileDataUsed > 5 && mobileDataUsed < 10)
           {
                price1 += 85
           }
         else
           {
                price1 = 9.75 * mobileDataUsed
           }
        
        monthlyBill = price + price1
        return monthlyBill
        
    }
    
    override func display()
    {
        super.display()
        print("\tBill Amount: \(billCalculation())")
        print("\tManufacturer Name: \(mobileManufacturerName)")
        print("\tPlan Name: \(planName)")
        print("\tMobile Data Used(IN GB): \(mobileDataUsed)")
        print("\tMinute: \(callMinutesUsed)")
    }
    
    
}



