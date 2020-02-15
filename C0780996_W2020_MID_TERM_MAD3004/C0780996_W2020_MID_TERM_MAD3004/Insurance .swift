//
//  Insurance .swift
//  C0780996_W2020_MID_TERM_MAD3004
//
//  Created by Raghav Bobal on 2020-02-14.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation

enum TypeOfInsurance
{
    case House, Car, Business, Health
}

public class Insurance
    
{
  private var insuranceProviderName: String
  private var typeofInsurance: TypeOfInsurance
  private var startDate: Date
  private var endDate: Date
  private var totalDays: Int
  private var totalInsuranceAmount: Double
    
    
  public static func calTotalDays(startDate: Date, endDate: Date) -> Int
    {
        return Calendar.current.dateComponents([.day], from: startDate, to: endDate).day!
    }

   init(insuranceProviderName: String, typeofInsurance: TypeOfInsurance, startDate: Date, endDate: Date, totalInsuranceAmount: Double)
    {
          self.insuranceProviderName = insuranceProviderName
          self.typeofInsurance = typeofInsurance
          self.startDate = startDate
          self.endDate = endDate
          self.totalInsuranceAmount = totalInsuranceAmount
          self.totalDays = Insurance.calTotalDays(startDate: startDate, endDate: endDate)
      
    }
}
