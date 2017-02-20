//
//  BirthInfo.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Markus Flodmark on 2017-02-19.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation

// Personal Information
struct BirthInformation {
    let dateOfBirth: Date?
    
    func validateInformation() throws {
        guard dateOfBirth != nil else {
            throw InformationError.dateOfBirthNotProvided
        }
    }
}
