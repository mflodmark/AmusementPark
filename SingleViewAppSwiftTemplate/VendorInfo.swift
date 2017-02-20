//
//  VendorInfo.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Markus Flodmark on 2017-02-19.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation

struct VendorInformation {
    let firstName: String?
    let lastName: String?
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
