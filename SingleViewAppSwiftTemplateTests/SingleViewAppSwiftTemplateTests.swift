//
//  SingleViewAppSwiftTemplateTests.swift
//  SingleViewAppSwiftTemplateTests
//
//  Created by Treehouse on 12/8/16.
//  Copyright © 2016 Treehouse. All rights reserved.
//

import XCTest
@testable import SingleViewAppSwiftTemplate

class SingleViewAppSwiftTemplateTests: XCTestCase {
    
    var guestClassic: GuestType!
    var guestVip: GuestType!
    var guestFreeChild: GuestType!
    var employeeManager: EmployeeType!
    var employeeHourlyEmployeeMaintenance: EmployeeType!
    var employeeHourlyEmployeeRideServices: EmployeeType!
    var employeeHourlyEmployeeFoodServices: EmployeeType!
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        guestClassic = GuestType.classic
        guestVip = GuestType.vip
        guestFreeChild = GuestType.freeChild
        employeeManager = EmployeeType.manager
        employeeHourlyEmployeeMaintenance = EmployeeType.hourlyEmployeeMaintenance
        employeeHourlyEmployeeRideServices = EmployeeType.hourlyEmployeeRideServices
        employeeHourlyEmployeeFoodServices = EmployeeType.hourlyEmployeeFoodServices
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
        guestClassic = nil
        guestVip = nil
        guestFreeChild = nil
        employeeManager = nil
        employeeHourlyEmployeeMaintenance = nil
        employeeHourlyEmployeeFoodServices = nil
        employeeHourlyEmployeeRideServices = nil
        
    }
    
    // Guest test access to amusment area
    func testGuestClassicAreaAccessToAmusementArea() {
        let swipe = Swipe()
        let access = swipe.swipeAreaAccessGuest(type: guestClassic, areaTryingToAccess: .amusementAreas)
        XCTAssertTrue(access == true)
    }
    
    func testGuestVipAreaAccessToAmusementArea() {
        let swipe = Swipe()
        let access = swipe.swipeAreaAccessGuest(type: guestVip, areaTryingToAccess: .amusementAreas)
        XCTAssertTrue(access == true)
    }
    
    func testGuestFreeChildAreaAccessToAmusementArea() {
        let swipe = Swipe()
        let access = swipe.swipeAreaAccessGuest(type: guestFreeChild, areaTryingToAccess: .amusementAreas)
        XCTAssertTrue(access == true)
    }
    
    // Guest test access to kitchen area
    func testGuestClassicAreaAccessToKitchenArea() {
        let swipe = Swipe()
        let access = swipe.swipeAreaAccessGuest(type: guestClassic, areaTryingToAccess: .kitchenAreas)
        XCTAssertTrue(access == false)
    }
    
    func testGuestVipAreaAccessToKitchenArea() {
        let swipe = Swipe()
        let access = swipe.swipeAreaAccessGuest(type: guestVip, areaTryingToAccess: .kitchenAreas)
        XCTAssertTrue(access == false)
    }
    
    func testGuestFreeChildAreaAccessToKitchenArea() {
        let swipe = Swipe()
        let access = swipe.swipeAreaAccessGuest(type: guestFreeChild, areaTryingToAccess: .kitchenAreas)
        XCTAssertTrue(access == false)
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}


