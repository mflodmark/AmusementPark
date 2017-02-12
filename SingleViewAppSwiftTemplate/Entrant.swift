//
//  Entrant.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Markus Flodmark on 2017-02-12.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation


enum EntrantType {
    case employee
    case guest
}

struct GuestInformation {
    let dateOfBirth: Date?
    
    func validateInformation() throws {
        guard dateOfBirth != nil else {
            throw InformationError.dateOfBirthNotProvided
        }
    }
}

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
// firstName: String?, lastName: String?, streetAddress: String?, city: String?, state: String?, zipCode: Int?

enum InformationError: Error {
    case dateOfBirthNotProvided
    case firstNameNotProvided
    case lastNameNotProvided
    case streetAddressNotProvided
    case cityNotProvided
    case stateNotProvided
    case zipCodeNotProvided
    
}
