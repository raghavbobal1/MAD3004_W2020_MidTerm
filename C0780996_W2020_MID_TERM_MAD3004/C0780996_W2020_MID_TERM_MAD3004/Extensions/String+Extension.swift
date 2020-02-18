//
//  Extension+String.swift
//  C0780996_W2020_MID_TERM_MAD3004
//
//  Created by Raghav Bobal on 2020-02-17.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation

extension String
{
    func validatePhone(value: String) -> Bool
    {
        let PHONE_REGEX = "^((\\+)|(00))[0-9]{6,14}$"
        let phoneTest = NSPredicate(format: "SELF MATCHES %@", PHONE_REGEX)
        let result =  phoneTest.evaluate(with: value)
        return result
    }
}
