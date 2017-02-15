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
    case streetAddressNotProvided
    case cityNotProvided
    case stateNotProvided
    case zipCodeNotProvided
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
