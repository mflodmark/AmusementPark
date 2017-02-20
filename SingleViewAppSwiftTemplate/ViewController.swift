//
//  ViewController.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Treehouse on 12/8/16.
//  Copyright © 2016 Treehouse. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // Declarations

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: Alerts
    func alertAreaAccess() {
        let alert = UIAlertController(title: "Area access", message: "Not allowed", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Dismiss", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    func alertRideAccess() {
        let alert = UIAlertController(title: "Ride access", message: "Not allowed", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Dismiss", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    func alertRideAccessSkipAllLines() {
        let alert = UIAlertController(title: "Skip all lines", message: "Not allowed", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Dismiss", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    // MARK: Functions
    
    // Generate Guest Pass
    func generateGuestPass() {
        
    }
    
    // Generate Employee pass
    func generateEmployeePass() {
        
    }
    
    // Buttons Enabled = False
    func buttonsIsEnabledFalse () {
        // Unable buttons
        let subButtonsArray = [firstButton, secondButton, thirdButton, fourthButton]
        
        for button in subButtonsArray {
            button?.isUserInteractionEnabled = false
        }
    }
    
    // Buttons Enabled = True
    func buttonsIsEnabledTrue () {
        // Enable buttons
        let subButtonsArray = [firstButton, secondButton, thirdButton, fourthButton]
        
        for button in subButtonsArray {
            button?.isUserInteractionEnabled = true
        }
    }
    
    // Get text for Sub Type Buttons
    func getTextEntrantSubTypeButtons(type: EntrantType) {
        if type == .guest {
            firstButton.setTitle(EntrantSubType.guestFreeChild.rawValue, for: .normal)
            secondButton.setTitle(EntrantSubType.guestClassic.rawValue, for: .normal)
            thirdButton.setTitle(EntrantSubType.guestSenior.rawValue, for: .normal)
            fourthButton.setTitle(EntrantSubType.guestSenior.rawValue, for: .normal)
            buttonsIsEnabledTrue()
            
            // Change opacity of other buttons
            guestButton.alpha = 1.0
            employeeButton.alpha = 0.5
            vendorButton.alpha = 0.5
            managerButton.alpha = 0.5
            
        } else if type == .employee {
            firstButton.setTitle(EntrantSubType.contractEmployee.rawValue, for: .normal)
            secondButton.setTitle(EntrantSubType.hourlyEmployeeMaintenance.rawValue, for: .normal)
            thirdButton.setTitle(EntrantSubType.hourlyEmployeeMaintenance.rawValue, for: .normal)
            fourthButton.setTitle(EntrantSubType.hourlyEmployeeRideServices.rawValue, for: .normal)
            buttonsIsEnabledTrue()
            
            // Change opacity of other buttons
            guestButton.alpha = 0.5
            employeeButton.alpha = 1.0
            vendorButton.alpha = 0.5
            managerButton.alpha = 0.5
            
        } else if type == .manager {
            firstButton.setTitle("", for: .normal)
            secondButton.setTitle("", for: .normal)
            thirdButton.setTitle("", for: .normal)
            fourthButton.setTitle("", for: .normal)
            buttonsIsEnabledFalse()
            
            // Change opacity of other buttons
            guestButton.alpha = 0.5
            employeeButton.alpha = 0.5
            vendorButton.alpha = 0.5
            managerButton.alpha = 1.0
            

        } else if type == .vendor {
            firstButton.setTitle("", for: .normal)
            secondButton.setTitle("", for: .normal)
            thirdButton.setTitle("", for: .normal)
            fourthButton.setTitle("", for: .normal)
            buttonsIsEnabledFalse()
            
            // Change opacity of other buttons
            guestButton.alpha = 0.5
            employeeButton.alpha = 0.5
            vendorButton.alpha = 1.0
            managerButton.alpha = 0.5
        }
    }
    
    
    // MARK: Buttons
    
    // Main row
    @IBOutlet weak var employeeButton: UIButton!
    @IBOutlet weak var managerButton: UIButton!
    @IBOutlet weak var guestButton: UIButton!
    @IBOutlet weak var vendorButton: UIButton!
    
    // Second Row
    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var secondButton: UIButton!
    @IBOutlet weak var thirdButton: UIButton!
    @IBOutlet weak var fourthButton: UIButton!
    

    // Check Entrant Type
    @IBAction func checkEntrantType(_ sender: UIButton) {
        let entrant = sender.title(for: .normal)
        
        if entrant! == guestButton.title(for: .normal) {
            getTextEntrantSubTypeButtons(type: EntrantType.guest)
            
        } else if entrant! == managerButton.title(for: .normal) {
            getTextEntrantSubTypeButtons(type: EntrantType.manager)
            
        } else if entrant! == vendorButton.title(for: .normal) {
            getTextEntrantSubTypeButtons(type: EntrantType.vendor)
            
        } else if entrant! == employeeButton.title(for: .normal) {
            getTextEntrantSubTypeButtons(type: EntrantType.employee)
        }
        
    }
    
    
    // Check Entrant Sub Type
    @IBAction func checkEntrantSubType(_ sender: UIButton) {
        if sender == firstButton {
            
        } else if sender == secondButton {
        } else if sender == thirdButton {
        } else if sender == fourthButton {
        }
    }
    
    // Generate Pass
    @IBAction func generatePass(_ sender: Any) {
    }
    
    // Populate Date
    @IBAction func populateData(_ sender: Any) {
        dateOfBirth.text = "1988-11-19"
        ssn.text = "1234512345"
        projectNr.text = "1"
        firstName.text = "Markus"
        lastName.text = "Flodmark"
        company.text = "Apple"
        streetAddress.text = "1 Infinite Loop"
        city.text = "Cupertino"
        state.text = "California"
        zipCode.text = "95014"
    }
    
    
    // MARK: TextFields
    
    @IBOutlet weak var dateOfBirth: UITextField!
    @IBOutlet weak var ssn: UITextField!
    @IBOutlet weak var projectNr: UITextField!
    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var company: UITextField!
    @IBOutlet weak var streetAddress: UITextField!
    @IBOutlet weak var city: UITextField!
    @IBOutlet weak var state: UITextField!
    @IBOutlet weak var zipCode: UITextField!
 
    
    // MARK: Layout
    
}


