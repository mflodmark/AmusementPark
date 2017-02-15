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

class Swipe {

    let viewController = ViewController()
    // Area Access Guest
    func swipeAreaAccessGuest(type: GuestType, areaTryingToAccess: AreaAccess) -> Bool {
        //let areaAccess: AreaAccess
        var area: Bool {
            switch areaTryingToAccess {
            case .amusementAreas: return type.amusementAccess
            case .kitchenAreas: return type.kitchenAccess
            case .maintenanceAreas: return type.maintenanceAccess
            case .rideControlAreas: return type.rideControlAccess
            }
        }
        
        // Check if false and return access denied with alert message
        if area == false {
            viewController.alertAreaAccess()
            return area
        } else {
            return area
        }
    }

    // Area Access Employee
    func swipeAreaAccessEmployee(type: EmployeeType, areaTryingToAccess: AreaAccess) -> Bool {
        var area: Bool {
            switch areaTryingToAccess {
            case .amusementAreas: return type.amusementAccess
            case .kitchenAreas: return type.kitchenAccess
            case .maintenanceAreas: return type.maintenanceAccess
            case .rideControlAreas: return type.rideControlAccess
            }
        }
        // Check if false and return access denied with alert message
        if area == false {
            viewController.alertAreaAccess()
            return area
        } else {
            return area
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
}
