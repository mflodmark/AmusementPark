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
extension Employee {
    var foodDiscount: Percent {
        switch employeeType {
        case .hourlyEmployeeFoodServices, .hourlyEmployeeMaintenance, .hourlyEmployeeRideServices: return 15
        case .manager: return 25
        }
    }
    
    var merchandiseDiscount: Percent {
        switch employeeType {
        case .manager, .hourlyEmployeeFoodServices, .hourlyEmployeeMaintenance, .hourlyEmployeeRideServices: return 25
        }
    }
}

// Area Access
extension Employee {
    var amusementAccess: Bool {
        switch employeeType {
        default: return true
        }
    }
    
    var kitchenAccess: Bool {
        switch employeeType {
        case .hourlyEmployeeMaintenance, .manager ,.hourlyEmployeeFoodServices: return true
        default: return false
        }
    }
    
    var rideControlAccess: Bool {
        switch employeeType {
        case .hourlyEmployeeMaintenance, .manager ,.hourlyEmployeeRideServices: return true
        default: return false
        }
    }
    
    var maintenanceAccess: Bool {
        switch employeeType {
        case .hourlyEmployeeMaintenance, .manager: return true
        default: return false
        }
    }
    
    var officeAccess: Bool {
        switch employeeType {
        case .manager: return true
        default: return false
        }
    }
}

// Ride Access 
extension Employee {
    var accessAllRides: Bool {
        switch employeeType {
        default: return true
        }
    }
    
    var skipAllRideLines: Bool {
        switch employeeType {
        default: return false
        }
    }
}
