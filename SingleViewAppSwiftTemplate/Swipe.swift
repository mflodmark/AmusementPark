//
//  Swipe.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Markus Flodmark on 2017-02-13.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation

// Validate pass and check if the person in question has the right access
// Check entrant Type before using a method

// Area Access
func swipeAreaAccessGuest(type: GuestType, areaTryingToAccess: AreaAccess) {
    let areaAccess: AreaAccess
    var area: Bool {
        switch areaAccess {
        case .amusementAreas: return type.amusementAccess
        case .kitchenAreas: return type.kitchenAccess
        case .maintenanceAreas: return type.maintenanceAccess
        case .rideControlAreas: return type.rideControlAccess
        }
    }
    // Check if false and return access denied with alert message
}


func swipeAreaAccessEmployee(type: EmployeeType) {
    let areaAccess: AreaAccess
    var area: Bool {
        switch areaAccess {
        case .amusementAreas: return type.amusementAccess
        case .kitchenAreas: return type.kitchenAccess
        case .maintenanceAreas: return type.maintenanceAccess
        case .rideControlAreas: return type.rideControlAccess
        }
    }
}

// Ride Access
func swipeRideAccessGuest(type: GuestType) {
    let rideAccess: RideAccess
    var ride: Bool {
        switch rideAccess {
        case .accessAllRides: return type.accessAllRides
        case .skipAllRideLines: return type.skipAllRideLines
        }
    }
}


// Discount Access
func swipeDiscountAccess() {
    
}

// Delay of swipe method
