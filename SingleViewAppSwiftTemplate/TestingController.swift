//
//  TestingController.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Markus Flodmark on 2017-02-21.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation
import UIKit

class TestingController: UIViewController {
    
    // MARK: Declarations

    let viewController = ViewController()
    let swipe = Swipe()

    @IBOutlet weak var image: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        fullName.text = getFullName()
        pass.text = getEntrantType()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        

        
    }
    
    
    
    // MARK: Functions
    

    
    func getFullName() -> String {

        
        // Unwrapping
        if let firstName = entrant?.personalInformation.firstName, let lastName = entrant?.personalInformation.lastName {
            print("get full name   " + firstName)
            return firstName + " " + lastName
        }
        
        return "No name available"
    }
    
    func getEntrantType() -> String {
        if let entrantSubType = entrant?.entrantSubType.rawValue {
            return entrantSubType + " Pass"
        }
        return "No pass available"
    }
    
    // MARK: Buttons
    
    // When buttons is pressed, call swipe functions
    
    @IBAction func testAreaAccess(_ sender: Any) {
        if let entrantSubType = entrant?.entrantSubType {

        let amusementArea = swipe.swipeAreaAccess(type: entrantSubType, areaTryingToAccess: .amusementAreas)
        let kitchenArea = swipe.swipeAreaAccess(type: entrantSubType, areaTryingToAccess: .kitchenAreas)
        let maintenanceArea = swipe.swipeAreaAccess(type: entrantSubType, areaTryingToAccess: .maintenanceAreas)
        let rideControlArea = swipe.swipeAreaAccess(type: entrantSubType, areaTryingToAccess: .rideControlAreas)
        
        // Add text to label test result
        testResult.text = "You have access to: AmusementArea: \(amusementArea) KichenArea: \(kitchenArea) MaintenanceArea: \(maintenanceArea) RideControlArea: \(rideControlArea)"
        }
        
        testResult.text = "No info available"
    }
    
    @IBAction func testRideAccess(_ sender: Any) {
        if let entrantSubType = entrant?.entrantSubType {
        
        let accessAllRides = swipe.swipeRideAccess(type: entrantSubType, rideAccess: .accessAllRides)
        let skipAllLines = swipe.swipeRideAccess(type: entrantSubType, rideAccess: .skipAllRideLines)

        
        // Add text to label test result
        testResult.text = "You have access to: all rides: \(accessAllRides) skip all ride lines: \(skipAllLines)"
        }
        
        testResult.text = "No info available"

        
    }
    
    @IBAction func testDiscountAccess(_ sender: Any) {
        if let entrantSubType = entrant?.entrantSubType {
        
        let food = swipe.swipeDiscountAccess(type: entrantSubType, discount: .food)
        let merchandise = swipe.swipeDiscountAccess(type: entrantSubType, discount: .merchandise)
        
        // Add text to label test result
        testResult.text = "You have the following discount: \nFood: \(food) \nMerchandise: \(merchandise)"
        }

        testResult.text = "No info available"

        
    }
    

    @IBAction func createNewPass(_ sender: UIButton) {

    }
    
    
    
    
    // MARK: Labels

    @IBOutlet weak var testResult: UILabel!
    
    @IBOutlet weak var fullName: UILabel!
    
    @IBOutlet weak var pass: UILabel!
    
    
}
