//
//  Bill.swift
//  C0780996_W2020_MID_TERM_MAD3004
//
//  Created by Raghav Bobal on 2020-02-13.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation

enum billType
{case HYDRO, MOBILE, INTERNET}


class bill
{
    private var billId: Int
    private var billDate: Date?
    private var totalBillAmount: Float
    private var billType: billType
    
}
