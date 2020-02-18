//
//  Currency+Extension.swift
//  C0780996_W2020_MID_TERM_MAD3004
//
//  Created by Raghav Bobal on 2020-02-18.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation
extension Double
{
func Setcurrency() -> String
  {
    let s = String.init(format: "$%.2f", self)
    return s
  }
    
func gbUnit() -> String
  {
    return "\(self) GB"
  }

func units() -> String
  {
  return "\(self) Units"
  }
    
}
