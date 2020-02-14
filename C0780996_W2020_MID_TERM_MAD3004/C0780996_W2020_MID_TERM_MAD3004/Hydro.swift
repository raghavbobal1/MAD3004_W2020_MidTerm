//
//  Hydro.swift
//  C0780996_W2020_MID_TERM_MAD3004
//
//  Created by Raghav Bobal on 2020-02-13.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation

public class Hydro: Bill
{   private var agencyName: String
    private var unitConsumed: Float

       init(billId: Int, billDate: Date?, billType: BillType,agencyName: String, unitConsumed: Float)
      {
           self.agencyName = agencyName
           self.unitConsumed = unitConsumed
           super.init(billId: billId, billDate: billDate, billType: billType)
        
      }

}

