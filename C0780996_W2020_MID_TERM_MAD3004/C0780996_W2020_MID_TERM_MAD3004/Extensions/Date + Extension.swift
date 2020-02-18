//
//  Date + Extension.swift
//  C0780996_W2020_MID_TERM_MAD3004
//
//  Created by Raghav Bobal on 2020-02-18.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation
extension Date
{
public func formattedBillDate() -> String

{
     let dateFormatterPrint = DateFormatter()
     dateFormatterPrint.dateFormat = "dd/MMMM/yyyy"
     let formattedDate = dateFormatterPrint.string(from: self)
     return formattedDate
 }
}
