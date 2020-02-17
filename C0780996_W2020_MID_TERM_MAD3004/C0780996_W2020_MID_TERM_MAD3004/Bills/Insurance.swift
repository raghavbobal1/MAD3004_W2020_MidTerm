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

    func billCalculation () -> Double
    {
        var price: Double = 0.0
        var price1: Double = 0.0
        var price2: Double = 0.0
        var price3: Double = 0.0
        
        if (type == TypeOfInsurance.Home)
        {
            if (totalDays == 365)
            {
                price += 1250
            }
            else
            {
                price = 3.75 * Double(totalDays)
            }
        }
        else if (type == TypeOfInsurance.Vehicle)
        {
            if (totalDays == 365)
            {
                price1 += 2000
            }
            else
            {
                price1 = 5.5 * Double(totalDays)
            }
        }
        else if (type == TypeOfInsurance.Business)
        {
            if (totalDays == 365)
            {
                price2 += 1500
            }
            else
            {
                price2 = 4.15 * Double(totalDays)
            }
        }
        else if (type == TypeOfInsurance.Health)
        {
            if (totalDays == 365)
            {
                price3 += 500
            }
            else
            {
                price3 = 2.50 * Double(totalDays)
            }
        }
        
        totalInsuranceAmount = price + price1 + price2 + price3
        return totalInsuranceAmount
    }


}
