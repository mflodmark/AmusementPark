//
//  Errors.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Markus Flodmark on 2017-02-13.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation

enum InformationError: Error {
    case dateOfBirthNotProvided
    case firstNameNotProvided
    case lastNameNotProvided
    case ssnNotProvided
    case streetAddressNotProvided
    case cityNotProvided
    case stateNotProvided
    case zipCodeNotProvided
    case dateOfVisitNotProvided
    case vendorCompanyNotProvided
}

enum InformationErrorText: String {
    case dateOfBirthNotProvided = "Date of birth not provided"
    case firstNameNotProvided = "First name not provided"
    case lastNameNotProvided = "Last name not provided"
    case ssnNotProvided = "SSN not provided"
    case streetAddressNotProvided = "Street address not provided"
    case cityNotProvided = "City not provided"
    case stateNotProvided = "State not provided"
    case zipCodeNotProvided = "Zip Code not provided"
    case dateOfVisitNotProvided = "Date of visit not provided"
    case vendorCompanyNotProvided = "Vendor company not provided"
}


// Not in use yet
enum ValidateAreaAccessError: Error {
    case amusementParkNotAllowed
    case kitchenNotAllowed
    case rideControlNotAllowed
    case maintenanceNotAllowed
}

enum validateRideAccess: Error {
    case accessAllRidesNotAllowed
    case skipAllLinesNotAllowed
}

extension ViewController {
 
}

