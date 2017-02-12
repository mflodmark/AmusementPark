//
//  Guest.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Markus Flodmark on 2017-02-11.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation

//MARK: Typealiases
typealias Percent = Int
typealias Age = Int

class Guest {
    let entrantType = EntrantType.guest
    var guestType: GuestType
    
    init(guestType: GuestType) {
        self.guestType = guestType
    }
}

enum GuestType {
    case classic
    case vip
    case freeChild
}

// Check age for guest type free child
extension Guest {
    func checkAge(bornAt: Date) {
        let age = Date().timeIntervalSince(bornAt)
        let ageLimit = 5.00
        let ageLimitInDays = ageLimit * 365
        
        if age <= ageLimitInDays {
            guestType = .freeChild
        }
    }
}


// Discounts
extension GuestType {
    var foodDiscount: Percent {
        switch self {
        case .classic, .freeChild: return 0
        case .vip: return 10
        }
    }
    
    var merchandiseDiscount: Percent {
        switch self {
        case .classic, .freeChild: return 0
        case .vip: return 20
        }
    }
}

// Area Access
extension EntrantType {
    // Guests only have access to amusement area
    var amusementAccess: Bool {
        switch self {
        default: return true
        }
    }
    
    var kitchenAccess: Bool {
        switch self {
        default: return false
        }
    }
    
    var rideControlAccess: Bool {
        switch self {
        default: return false
        }
    }
    
    var maintenanceAccess: Bool {
        switch self {
        default: return false
        }
    }
    
    var officeAccess: Bool {
        switch self {
        default: return false
        }
    }
}

// Ride Access
extension Guest {
    var accessAllRides: Bool {
        switch guestType {
        default: return true
        }
    }
    
    var skipAllRideLines: Bool {
        switch guestType {
        case .vip: return true
        default: return false
        }
    }
}






