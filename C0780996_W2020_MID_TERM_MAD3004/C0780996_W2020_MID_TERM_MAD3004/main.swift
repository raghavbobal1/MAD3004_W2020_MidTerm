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
var it1 = Internet(billId: 004, billDate: Date(), billType: BillType.Internet, providerName: "Rogers", internetGbUsed: 80.99)
var it2 = Internet(billId: 005, billDate: Date(), billType: BillType.Internet, providerName: "Virgin", internetGbUsed: 57.87)
var it3 = Internet(billId: 006, billDate: Date(), billType: BillType.Internet, providerName: "Bell", internetGbUsed: 88.05)

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

//Customer Class Objects
var c1 = Customer(customerId:1, firstName: "Kush", lastName: "Bhatia", emailId: "kush@gmail.com", mobileNumber: "9990390900", customerBills: ["Mobile Bill" : m2, "Hydro Bill": hy1])
    
var c2 = Customer(customerId:2, firstName: "Salman", lastName: "Khan", emailId: "Salm323@gmail.com", mobileNumber: "9999992700", customerBills: ["Health Insurance Bill" : ins2,"Mobile Bill" : m3,"Internet Bill" : it1])

var c3 = Customer(customerId:3, firstName: "Raghav", lastName: "Bobal", emailId: "raghav@gmail.com", mobileNumber: "6479370707", customerBills: ["Mobile Bill" : m1])

var c4 = Customer(customerId:4, firstName: "Ram", lastName: "Sharma", emailId: "major@yahoo.com", mobileNumber: "8787112356", customerBills: [:])

var c5 = Customer(customerId:5, firstName: "Uday", lastName: "Shetty", emailId: "Udaybhai@gmail.com", mobileNumber: "1717827382", customerBills: ["Hydro Bill" : hy3])

//adding customers to array
var findingCustomers = [Int: Customer]()
func addCustomer(customer: Customer)
{
findingCustomers.updateValue(customer, forKey: customer.customerId)
}

addCustomer(customer: c1)
addCustomer(customer: c2)
addCustomer(customer: c3)
addCustomer(customer: c4)
addCustomer(customer: c5)

//displaying details of all customers
for c in findingCustomers.keys.sorted()
{

    findingCustomers[c]?.display()
   
}

func getCustomerById(customerId: Int)
    {
        if findingCustomers.keys.contains(customerId)
        {
           print("\n")
           print("############## Showing Customer By ID ##############")
           print("\n")
           print()
           findingCustomers[customerId]?.display()
        }
        else
        {
                print("THE CUSTOMER DOES NOT EXIST...")
                print("******************************************")
        }
    }
//displaying details of customers with id-1 and id-5
getCustomerById(customerId: 1)
getCustomerById(customerId: 5)
print("\n")
getCustomerById(customerId: 7)
//Printing and sorting customers
print("\n\n Printing Customers in a sorted way \n")
var sortedCustomers = findingCustomers.sorted
{
    (arg0, arg1) -> Bool in
    
    let (_, value1) = arg1
    let (_, value2) = arg0
    return value1.totalBill > value2.totalBill
}
for (_,customer) in sortedCustomers{
    customer.display()
}
