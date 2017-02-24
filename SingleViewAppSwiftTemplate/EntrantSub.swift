//
//  EntrantSub.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Markus Flodmark on 2017-02-20.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation

//MARK: Typealiases
typealias Percent = Int
typealias Age = Int

class EntrantSub {
    let entrantType: EntrantType
    var entrantSubType: EntrantSubType
    let personalInformation: PersonalInformation
    
    init(entrantType: EntrantType, entrantSubType: EntrantSubType, personalInformation: PersonalInformation) {
        self.entrantType = entrantType
        self.entrantSubType = entrantSubType
        self.personalInformation = personalInformation
        
        // catch errors
        do {
            try personalInformation.validateInformation()
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

enum EntrantSubType: String {
    case manager = "Manager"
    case hourlyEmployeeFoodServices = "Hourly Food"
    case hourlyEmployeeRideServices = "Hourly Ride"
    case hourlyEmployeeMaintenance = "Hourly Maintenance"
    case contractEmployee = "Contract"
    case vendor = "Vendor"
    case guestClassic = "Classic"
    case guestVip = "VIP"
    case guestFreeChild = "Child"
    case guestSenior = "Senior"
    case guestSeasonPass = "Season"
}


// Discounts
extension EntrantSubType {
    var foodDiscount: Percent {
        switch self {
        case .vendor, .contractEmployee, .guestClassic, .guestFreeChild: return 0
        case .guestVip, .guestSenior, .guestSeasonPass: return 10
        case .hourlyEmployeeFoodServices, .hourlyEmployeeMaintenance, .hourlyEmployeeRideServices: return 15
        case .manager: return 25
        }
    }
    
    var merchandiseDiscount: Percent {
        switch self {
        case .vendor, .contractEmployee, .guestClassic, .guestFreeChild: return 0
        case .guestVip, .guestSenior, .guestSeasonPass: return 20
        case .manager, .hourlyEmployeeFoodServices, .hourlyEmployeeMaintenance, .hourlyEmployeeRideServices: return 25
        }
    }
}


// Area Access
extension EntrantSubType {
    var amusementAccess: Bool {
        switch self {
        default: return true
        }
    }
    
    var kitchenAccess: Bool {
        switch self {
        case .hourlyEmployeeMaintenance, .manager ,.hourlyEmployeeFoodServices, .vendor, .contractEmployee: return true
        default: return false
        }
    }
    
    var rideControlAccess: Bool {
        switch self {
        case .hourlyEmployeeMaintenance, .manager ,.hourlyEmployeeRideServices: return true
        default: return false
        }
    }
    
    var maintenanceAccess: Bool {
        switch self {
        case .hourlyEmployeeMaintenance, .manager: return true
        default: return false
        }
    }
    
    var officeAccess: Bool {
        switch self {
        case .manager: return true
        default: return false
        }
    }
}



// Ride Access
extension EntrantSubType {
    var accessAllRides: Bool {
        switch self {
        default: return true
        }
    }
    
    var skipAllRideLines: Bool {
        switch self {
        case .guestVip: return true
        default: return false
        }
    }
}




