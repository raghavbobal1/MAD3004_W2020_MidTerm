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
    
    
  public static func calTotalDays(startDate: Date, endDate: Date) -> Int
    {
        return Calendar.current.dateComponents([.day], from: startDate, to: endDate).day!
    }

   init(billId: Int, billDate: Date, billType: BillType, insuranceProviderName: String, typeofInsurance: TypeOfInsurance, startDate: Date, endDate: Date)
    {
          self.insuranceProviderName = insuranceProviderName
          self.startDate = startDate
          self.endDate = endDate
          self.totalDays = Insurance.calTotalDays(startDate: startDate, endDate: endDate)
          self.type = typeofInsurance
        super.init(billId: billId, billDate: billDate, billType: billType)
    }

    override func billCalculation() -> Double
    {
        var homePrice: Double = 0.0
        var vehiclePrice: Double = 0.0
        var businessPrice: Double = 0.0
        var healthPrice: Double = 0.0
        var totalInsuranceAmount: Double
        
        if (type == TypeOfInsurance.Home)
        {
            if (totalDays == 365)
            {
                homePrice += 1250
            }
            else
            {
                homePrice = 3.75 * Double(totalDays)
            }
        }
        else if (type == TypeOfInsurance.Vehicle)
        {
            if (totalDays == 365)
            {
                vehiclePrice += 2000
            }
            else
            {
                vehiclePrice = 5.5 * Double(totalDays)
            }
        }
        else if (type == TypeOfInsurance.Business)
        {
            if (totalDays == 365)
            {
                businessPrice += 1500
            }
            else
            {
                businessPrice = 4.15 * Double(totalDays)
            }
        }
        else if (type == TypeOfInsurance.Health)
        {
            if (totalDays == 365)
            {
                healthPrice += 500
            }
            else
            {
                healthPrice = 2.50 * Double(totalDays)
            }
        }
        
        totalInsuranceAmount = homePrice + vehiclePrice + businessPrice + healthPrice
        return totalInsuranceAmount
    }
    override func display()
    {
        super.display()
        print("\t\tTotal Amount: \(self.billCalculation())")
        print("\t\tInsurance Provider Name: \(self.insuranceProviderName)")
        print("\t\tType Of Insurance: \(self.type)")
    }

}
