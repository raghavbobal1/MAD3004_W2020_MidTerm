//
//  Insurance .swift
//  C0780996_W2020_MID_TERM_MAD3004
//
//  Created by Raghav Bobal on 2020-02-14.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation

public class Insurance: Bill
    
{
  private var insuranceProviderName: String
  private var type: TypeOfInsurance
  private var startDate: Date
  private var endDate: Date
  private var totalDays: Int
  private var totalInsuranceAmount: Double
    
    
  public static func calTotalDays(startDate: Date, endDate: Date) -> Int
    {
        return Calendar.current.dateComponents([.day], from: startDate, to: endDate).day!
    }

   init(billId: Int, billDate: Date?, billType: BillType,customerId: Int, insuranceProviderName: String, typeofInsurance: TypeOfInsurance, startDate: Date, endDate: Date, totalInsuranceAmount: Double)
    {
          self.insuranceProviderName = insuranceProviderName
          self.startDate = startDate
          self.endDate = endDate
          self.totalInsuranceAmount = totalInsuranceAmount
          self.totalDays = Insurance.calTotalDays(startDate: startDate, endDate: endDate)
          self.type = typeofInsurance
          super.init(billId: billId, billDate: billDate, billType: billType, customerId: customerId)
    }
}