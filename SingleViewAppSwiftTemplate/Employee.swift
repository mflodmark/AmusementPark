//
//  Employee.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Markus Flodmark on 2017-02-12.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation
/*
class Employee {
    let entrantType: EntrantType
    let employeeType: EmployeeType
    let employeeInformation: PersonalInformation
    
    init(entrantType: EntrantType, employeeType: EmployeeType, employeeInformation: PersonalInformation) {
        self.entrantType = entrantType
        self.employeeType = employeeType
        self.employeeInformation = employeeInformation
        
        // catch errors
        do {
            try employeeInformation.validateInformation()
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

enum EmployeeType: String {
    case manager = "Manager"
    case hourlyEmployeeFoodServices = "Hourly Food"
    case hourlyEmployeeRideServices = "Hourly Ride"
    case hourlyEmployeeMaintenance = "Hourly Maintenance"
    case contractEmployee = "Contract"
    case vendor = "Vendor"
}


// Discounts
extension EmployeeType {
    var foodDiscount: Percent {
        switch self {
        case .vendor, .contractEmployee: return 0
        case .hourlyEmployeeFoodServices, .hourlyEmployeeMaintenance, .hourlyEmployeeRideServices: return 15
        case .manager: return 25
        }
    }
    
    var merchandiseDiscount: Percent {
        switch self {
        case .vendor, .contractEmployee: return 0
        case .manager, .hourlyEmployeeFoodServices, .hourlyEmployeeMaintenance, .hourlyEmployeeRideServices: return 25
        }
    }
}

// Area Access
extension EmployeeType {
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
extension EmployeeType {
    var accessAllRides: Bool {
        switch self {
        default: return true
        }
    }
    
    var skipAllRideLines: Bool {
        switch self {
        default: return false
        }
    }
}
*/

