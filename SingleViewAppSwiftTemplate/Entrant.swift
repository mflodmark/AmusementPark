//
//  Entrant.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Markus Flodmark on 2017-02-12.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation


enum EntrantType: String {
    case employee = "Employee"
    case guest = "Guest"
    case manager = "Manager"
    case vendor = "Vendor"
}


enum AreaAccess {
    case amusementAreas
    case kitchenAreas
    case rideControlAreas
    case maintenanceAreas
}

enum RideAccess {
    case accessAllRides
    case skipAllRideLines
}

enum Discount {
    case food
    case merchandise
}







