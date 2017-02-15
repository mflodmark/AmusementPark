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

    // Ride Access - Guest
    func swipeRideAccessGuest(type: GuestType, rideAccess: RideAccess) -> Bool {
        var ride: Bool {
            switch rideAccess {
            case .accessAllRides: return type.accessAllRides
            case .skipAllRideLines: return type.skipAllRideLines
            }
        }
        // Check if false and return access denied with alert message
        if ride == false {
            if rideAccess == .accessAllRides {
                viewController.alertRideAccess()
            } else {
                viewController.alertRideAccessSkipAllLines()
            }
            return ride
        } else {
            return ride
        }
    }
    
    // Ride Access - Employee
    func swipeRideAccessEmployee(type: EmployeeType, rideAccess: RideAccess) -> Bool {
        var ride: Bool {
            switch rideAccess {
            case .accessAllRides: return type.accessAllRides
            case .skipAllRideLines: return type.skipAllRideLines
            }
        }
        // Check if false and return access denied with alert message
        if ride == false {
            if rideAccess == .accessAllRides {
                viewController.alertRideAccess()
            } else {
                viewController.alertRideAccessSkipAllLines()
            }
            return ride
        } else {
            return ride
        }
    }
    

    // Discount Access Guest
    func swipeDiscountAccessGuest(type: GuestType, discount: Discount) -> Percent {
        var discountPercent: Percent {
            switch discount {
            case .food: return type.foodDiscount
            case .merchandise: return type.merchandiseDiscount
            }
        }

        return discountPercent
    }
    
    // Discount Access Employee
    func swipeDiscountAccessEmployee(type: EmployeeType, discount: Discount) -> Percent {
        var discountPercent: Percent {
            switch discount {
            case .food: return type.foodDiscount
            case .merchandise: return type.merchandiseDiscount
            }
        }
        
        return discountPercent
    }

    
}
