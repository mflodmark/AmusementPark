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
    let guestInformation: GuestInformation
    
    init(guestType: GuestType, guestInformation: GuestInformation) {
        self.guestType = guestType
        self.guestInformation = guestInformation
        
        // Catch errors
        do {
            try guestInformation.validateInformation()
        } catch InformationError.dateOfBirthNotProvided {
            print("Missing date of birth, please add date of birth and try again")
        } catch {
            fatalError("Fatal error!")
        }
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
extension GuestType {
    // Guests only have access to amusement area
    var amusementAccess: Bool {
        switch self {
        case .classic, .freeChild , .vip: return true
        }
    }
    
    var kitchenAccess: Bool {
        switch self {
        case .classic, .freeChild , .vip: return false
        }
    }
    
    var rideControlAccess: Bool {
        switch self {
        case .classic, .freeChild , .vip: return false
        }
    }
    
    var maintenanceAccess: Bool {
        switch self {
        case .classic, .freeChild , .vip: return false
        }
    }
    
    var officeAccess: Bool {
        switch self {
        case .classic, .freeChild , .vip: return false
        }
    }
}

// Ride Access
extension GuestType {
    var accessAllRides: Bool {
        switch self {
        case .classic, .freeChild , .vip: return true
        }
    }
    
    var skipAllRideLines: Bool {
        switch self {
        case .vip: return true
        case .classic, .freeChild: return false
        }
    }
}


// Personal Information
struct GuestInformation {
    let dateOfBirth: Date?
    
    func validateInformation() throws {
        guard dateOfBirth != nil else {
            throw InformationError.dateOfBirthNotProvided
        }
    }
}






