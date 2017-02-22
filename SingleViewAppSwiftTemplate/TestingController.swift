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
    
    // count projectnr -- öka när cerate new pass är tryckt
    //counter += 1
    
    let viewController = ViewController()
    let swipe = Swipe()
    @IBOutlet weak var image: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Lägg till så att alla outlets får data direkt vid load
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: Declarations
    
    
    // MARK: Functions
    
    func getFullName() -> String {
        let firstName = viewController.entrant?.personalInformation.firstName
        let lastName = viewController.entrant?.personalInformation.lastName
        
        // FIXME: Unwrapping
        return firstName! + " " + lastName!
    }
    
    func getEntrantType() -> String {
        let entrantType = viewController.entrant?.entrantType.rawValue
        let entrantSubType = viewController.entrant?.entrantSubType.rawValue
        
        return entrantSubType! + " " + entrantType! + " Pass"
    }
    
    // MARK: Buttons
    
    // When buttons is pressed, call swipe functions
    
    @IBAction func testAreaAccess(_ sender: Any) {
        let entrantSubType = viewController.entrant?.entrantSubType

        let amusementArea = swipe.swipeAreaAccess(type: entrantSubType!, areaTryingToAccess: .amusementAreas)
        let kitchenArea = swipe.swipeAreaAccess(type: entrantSubType!, areaTryingToAccess: .kitchenAreas)
        let maintenanceArea = swipe.swipeAreaAccess(type: entrantSubType!, areaTryingToAccess: .maintenanceAreas)
        let rideControlArea = swipe.swipeAreaAccess(type: entrantSubType!, areaTryingToAccess: .rideControlAreas)
        
        // Add text to label test result
        testResult.text = "You have access to: AmusementArea: \(amusementArea) KichenArea: \(kitchenArea) MaintenanceArea: \(maintenanceArea) RideControlArea: \(rideControlArea)"
    }
    
    @IBAction func testRideAccess(_ sender: Any) {
    }
    
    @IBAction func testDiscountAccess(_ sender: Any) {
    }
    
    // MARK: Labels

    @IBOutlet weak var testResult: UILabel!
    
    
    
}
