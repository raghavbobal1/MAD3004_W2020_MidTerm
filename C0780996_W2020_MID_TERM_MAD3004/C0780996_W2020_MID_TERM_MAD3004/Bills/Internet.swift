//
//  Internet.swift
//  C0780996_W2020_MID_TERM_MAD3004
//
//  Created by Raghav Bobal on 2020-02-13.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation

public class Internet: Bill
{
    private var providerName: String
    private var internetGbUsed: Double
    var type: BillType = BillType.Internet

    init(billId: Int, billDate: Date, billType: BillType,customerId: Int, providerName: String, internetGbUsed: Double)
    {
           self.providerName = providerName
           self.internetGbUsed = internetGbUsed
           super.init(billId: billId, billDate: billDate, billType: billType, customerId: customerId)
    }
    
   
    func billCalculate() -> Double
    {
        var price: Double = 0.0
          
        if (internetGbUsed < 3)
        {
            price = 12.15 * internetGbUsed
        }
        else if (internetGbUsed > 3 && internetGbUsed < 10)
        {
            price = 14 * internetGbUsed
        }
        else
        {
            price = 15.15 * internetGbUsed
        }
              return price
    }

}
