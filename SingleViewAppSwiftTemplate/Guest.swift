//
//  Guest.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Markus Flodmark on 2017-02-11.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation

class Guest {
    
}

enum areaAccess: String {
    case amusement = "Amusement Areas"
    case kitchen = "Kitchen Areas"
    case rideControl = "Ride Control Areas"
    case maintenance = "Maintenance Areas"
    case office = "Office Areas"
}

enum rideAccess: String {
    case accessAllRides = "Access all rides"
    case skipAllRideLines = "Skip all ride lines"
}

enum discountAccess: String {
    case foodDiscount = "discount on food"
    case merchandiseDiscount = "discount on merchandise"
}

struct GuestInformation {
    let dateOfBirth: Int? // check date, not Int
    let firstName: String?
    let lastName: String?
    let streetAddress: String?
    let city: String?
    let State: String?
    let zipCode: Int?
    
}

