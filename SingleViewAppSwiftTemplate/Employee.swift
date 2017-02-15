//
//  Employee.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Markus Flodmark on 2017-02-12.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation

class Employee {
    let entrantType = EntrantType.employee
    let employeeType: EmployeeType
    let employeeInformation: EmployeeInformation
    
    init(employeeType: EmployeeType, employeeInformation: EmployeeInformation) {
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
        } catch {
            fatalError("Fatal error!")
        }
    }
    
}

enum EmployeeType {
    case manager
    case hourlyEmployeeFoodServices
    case hourlyEmployeeRideServices
    case hourlyEmployeeMaintenance
}

// Checking valid personal employee information


// Discounts
extension EmployeeType {
    var foodDiscount: Percent {
        switch self {
        case .hourlyEmployeeFoodServices, .hourlyEmployeeMaintenance, .hourlyEmployeeRideServices: return 15
        case .manager: return 25
        }
    }
    
    var merchandiseDiscount: Percent {
        switch self {
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
        case .hourlyEmployeeMaintenance, .manager ,.hourlyEmployeeFoodServices: return true
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

// Personal Information
struct EmployeeInformation {
    let firstName: String?
    let lastName: String?
    let streetAddress: String?
    let city: String?
    let state: String?
    let zipCode: Int?
    
    func validateInformation() throws {
        guard firstName != "" else {
            throw InformationError.firstNameNotProvided
        }
        guard lastName != "" else {
            throw InformationError.lastNameNotProvided
        }
        guard streetAddress != "" else  {
            throw InformationError.streetAddressNotProvided
        }
        guard city != "" else {
            throw InformationError.cityNotProvided
        }
        guard state != "" else {
            throw InformationError.stateNotProvided
        }
        guard zipCode != nil else {
            throw InformationError.cityNotProvided
        }
    }
}
