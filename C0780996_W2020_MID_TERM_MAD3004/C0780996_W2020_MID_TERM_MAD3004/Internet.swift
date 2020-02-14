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
    private var InternetGbUsed: Float

    init(billId: Int, billDate: Date, billType: BillType, providerName: String, InternetGbUsed: Float)
    {
           self.providerName = providerName
           self.InternetGbUsed = InternetGbUsed
           super.init(billId: billId, billDate: billDate, billType: billType)
   
    }

}
