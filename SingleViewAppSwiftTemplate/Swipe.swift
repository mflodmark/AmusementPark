//
//  Swipe.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Markus Flodmark on 2017-02-13.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation

// Validate pass and check if the person in question has the right access
func swipeAreaAccess(entrantType: EntrantType, guestType: GuestType, guestInfo: GuestInformation, employeeType: EmployeeType, employeeInfo: EmployeeInformation) {
    if entrantType == EntrantType.guest {
        swipeAreaAccessGuest(type: guestType, info: guestInfo)
    } else if entrantType == EntrantType.employee {
        swipeAreaAccesEmployee(type: employeeType)
    }
}


func swipeAreaAccessGuest(type: GuestType, info: GuestInformation) {
    let guest = Guest(guestType: type, guestInformation: info)
}

func swipeAreaAccesEmployee(type: EmployeeType) {
    
}

func swipeRideAccess() {
    
}

func swipeDiscountAccess() {
    
}
