//
//  PersonalInfo.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Markus Flodmark on 2017-02-19.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation

// Personal Information
struct PersonalInformation {
    let firstName: String?
    let lastName: String?
    let streetAddress: String?
    let city: String?
    let state: String?
    let zipCode: String?
    let vendorCompany: String?
    let dateOfBirth: Date?
    let dateOfVisit: Date?
    
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
        guard vendorCompany != "" else {
            throw InformationError.vendorCompanyNotProvided
        }
        guard dateOfBirth != nil else {
            throw InformationError.dateOfBirthNotProvided
        }
        guard dateOfVisit != nil else {
            throw InformationError.dateOfVisitNotProvided
        }
    }
}


