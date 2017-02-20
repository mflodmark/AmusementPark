//
//  Guest.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Markus Flodmark on 2017-02-11.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation

/*
//MARK: Typealiases
typealias Percent = Int
typealias Age = Int

class Guest {
    let entrantType = EntrantType.guest
    var guestType: GuestType
    let guestInformation: PersonalInformation
    
    init(guestType: GuestType, guestInformation: PersonalInformation) {
        self.guestType = guestType
        self.guestInformation = guestInformation
        
        // Catch errors
        do {
            try guestInformation.validateInformation()
        } catch InformationError.firstNameNotProvided {
            print("Missing first name, please add first name and try again")
        } catch InformationError.lastNameNotProvided {
            print("Missing last name, please add last name and try again")
        } catch InformationError.cityNotProvided {
            print("Missing city, please add city and try again")
        } catch InformationError.stateNotProvided {
            print("Missing state, please add state and try again")
        } catch InformationError.streetAddressNotProvided {
            print("Missing street address, please add street address and try again")
        } catch InformationError.zipCodeNotProvided {
            print("Missing zip code, please add zip code and try again")
        }  catch InformationError.dateOfBirthNotProvided {
            print("Missing date of birth, please add date of birth and try again")
        } catch InformationError.dateOfVisitNotProvided {
            print("Missing date of visit, please add date of visit and try again")
        } catch InformationError.vendorCompanyNotProvided {
            print("Missing vendor company, please add vendor company and try again")
        } catch {
            fatalError("Fatal error!")
        }
    }
}

enum GuestType: String {
    case classic = "Classic"
    case vip = "VIP"
    case freeChild = "Child"
    case senior = "Senior"
    case seasonPass = "Season Pass"
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
        case .vip, .senior , .seasonPass: return 10
        }
    }
    
    var merchandiseDiscount: Percent {
        switch self {
        case .classic, .freeChild: return 0
        case .vip, .senior, .seasonPass: return 20
        }
    }
}

// Area Access
extension GuestType {
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
extension GuestType {
    var accessAllRides: Bool {
        switch self {
        default: return true        }
    }
    
    var skipAllRideLines: Bool {
        switch self {
        case .vip: return true
        default: return false
        }
    }
}

*/






