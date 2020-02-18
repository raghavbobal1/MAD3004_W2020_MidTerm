//
//  main.swift
//  C0780996_W2020_MID_TERM_MAD3004
//
//  Created by Raghav Bobal on 2020-02-13.
//  Copyright © 2020 com.lambton. All rights reserved.
//

import Foundation

//Mobile Class Objects
var m1 = Mobile(billId: 001, billDate: Date(), billType: BillType.Mobile, mobileManufacturerName: "Fido", planName: "Student Plan", mobileNumber: "6479370707", mobileDataUsed: 6.1, callMinutesUsed: 567.0)
var m2 = Mobile(billId: 002, billDate: Date(), billType: BillType.Mobile, mobileManufacturerName: "Freedom", planName: "Business Plan", mobileNumber: "6478989998", mobileDataUsed: 8.9, callMinutesUsed: 999.67)
var m3 = Mobile(billId: 003, billDate: Date(), billType: BillType.Mobile, mobileManufacturerName: "Bell", planName: "Home plan", mobileNumber: "6545656565", mobileDataUsed: 5.6, callMinutesUsed: 777.77)

//Internet Class Objects
var it1 = Internet(billId: 004, billDate: Date(), billType: BillType.Internet, providerName: "Rogers", internetGbUsed: 807.99)
var it2 = Internet(billId: 005, billDate: Date(), billType: BillType.Internet, providerName: "Virgin", internetGbUsed: 567.87)
var it3 = Internet(billId: 006, billDate: Date(), billType: BillType.Internet, providerName: "Bell", internetGbUsed: 888.05)

//Hydro Class Objects
var hy1 = Hydro(billId: 007, billDate: Date(), billType: BillType.Hydro, agencyName: "Toronto Hydro", unitsConsumed: 677)
var hy2 = Hydro(billId: 008, billDate: Date(), billType: BillType.Hydro, agencyName:
    "Hydro One", unitsConsumed: 1227)
var hy3 = Hydro(billId: 009, billDate: Date(), billType: BillType.Hydro, agencyName: "Ontario Hydro", unitsConsumed: 897)

//Insurance Class Objects
var ins1 = Insurance(billId: 010, billDate: Date(), billType: BillType.Insurance, insuranceProviderName: "LIC Insurance", typeofInsurance: TypeOfInsurance.Business, startDate: Date(), endDate: Date())
var ins2 = Insurance(billId: 011, billDate: Date(), billType: BillType.Insurance, insuranceProviderName: "TD Insurance", typeofInsurance: TypeOfInsurance.Health, startDate: Date(), endDate: Date())
var ins3 = Insurance(billId: 012, billDate: Date(), billType: BillType.Insurance, insuranceProviderName: "BM Insurance", typeofInsurance: TypeOfInsurance.Home, startDate: Date(), endDate: Date())
var ins4 = Insurance(billId: 013, billDate: Date(), billType: BillType.Insurance, insuranceProviderName: "CIBC Insurance", typeofInsurance: TypeOfInsurance.Vehicle, startDate: Date(), endDate: Date())

//


