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
    var counter = 1
    var entrant: EntrantSub? = nil
    var entrantT: EntrantType? = nil
    var entrantS: EntrantSubType? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // default for text fields
        setDefaultSettings()
        
        // default for name on sub type
        subButtonsIsBlank()
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
    
    // Buttons Enabled = False
    func buttonsIsEnabledFalse () {
        // Unable buttons
        let subButtonsArray = [firstButton, secondButton, thirdButton, fourthButton, fifthButton]
        
        for button in subButtonsArray {
            button?.isUserInteractionEnabled = false
        }
    }
    
    // Sub buttons no name
    func subButtonsIsBlank () {
        // Unable buttons
        let subButtonsArray = [firstButton, secondButton, thirdButton, fourthButton, fifthButton]
        
        for button in subButtonsArray {
            button?.setTitle("", for: .normal)
        }
    }

    
    // Buttons Enabled = True
    func buttonsIsEnabledTrue () {
        // Enable buttons
        let subButtonsArray = [firstButton, secondButton, thirdButton, fourthButton, fifthButton]
        
        for button in subButtonsArray {
            button?.isUserInteractionEnabled = true
        }
    }
    
    // Buttons hidden = false
    func buttonsIsHiddenFalse () {
        // Enable buttons
        let subButtonsArray = [firstButton, secondButton, thirdButton, fourthButton, fifthButton]
        
        for button in subButtonsArray {
            button?.isHidden = false
        }
    }
    
    
    
    // Get text for Sub Type Buttons
    func getTextEntrantSubTypeButtons(type: EntrantType) {
        
        buttonsIsHiddenFalse()
        
        if type == .guest {
            firstButton.setTitle(EntrantSubType.guestFreeChild.rawValue, for: .normal)
            secondButton.setTitle(EntrantSubType.guestClassic.rawValue, for: .normal)
            thirdButton.setTitle(EntrantSubType.guestSenior.rawValue, for: .normal)
            fourthButton.setTitle(EntrantSubType.guestVip.rawValue, for: .normal)
            fifthButton.setTitle(EntrantSubType.guestSeasonPass.rawValue, for: .normal)
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
            //fifthButton.setTitle("", for: .normal)
            fifthButton.isHidden = true
            buttonsIsEnabledTrue()
            
            // Change opacity of other buttons
            guestButton.alpha = 0.5
            employeeButton.alpha = 1.0
            vendorButton.alpha = 0.5
            managerButton.alpha = 0.5
            
        } else if type == .manager {
            firstButton.setTitle("Manager", for: .normal)
            secondButton.isHidden = true
            thirdButton.isHidden = true
            fourthButton.isHidden = true
            fifthButton.isHidden = true
            //buttonsIsEnabledFalse()
            
            // Change opacity of other buttons
            guestButton.alpha = 0.5
            employeeButton.alpha = 0.5
            vendorButton.alpha = 0.5
            managerButton.alpha = 1.0
            

        } else if type == .vendor {
            firstButton.setTitle("Vendor", for: .normal)
            secondButton.isHidden = true
            thirdButton.isHidden = true
            fourthButton.isHidden = true
            fifthButton.isHidden = true
            //buttonsIsEnabledFalse()
            
            // Change opacity of other buttons
            guestButton.alpha = 0.5
            employeeButton.alpha = 0.5
            vendorButton.alpha = 1.0
            managerButton.alpha = 0.5
        }
    }

    
    // Show or hide fields when sub entrant type is pressed
    func showCorrectFields(type: EntrantSubType) {
        
        setDefaultSettings()

        if type == .guestClassic || type == .guestFreeChild || type == .guestVip {
            
            dateOfBirth.backgroundColor = UIColor.white
            dateOfBirth.isUserInteractionEnabled = true
            
        } else if type == .hourlyEmployeeMaintenance || type == .hourlyEmployeeFoodServices || type == .hourlyEmployeeRideServices || type == .manager || type == .contractEmployee || type == .guestSeasonPass {
            
            let firstArray = [firstName, lastName, streetAddress, city, state, zipCode]
            for field in firstArray {
                field?.backgroundColor = UIColor.white
                field?.isUserInteractionEnabled = true
            }
            
        } else if type == .vendor {
            
            let secondArray = [firstName, lastName, company, dateOfBirth]
            for field in secondArray {
                field?.backgroundColor = UIColor.white
                field?.isUserInteractionEnabled = true
            }
            
        } else if type == .guestSenior {
            
            let thirdArray = [firstName, lastName, dateOfBirth]
            for field in thirdArray {
                field?.backgroundColor = UIColor.white
                field?.isUserInteractionEnabled = true
            }
        }
        
 
    }
    
    // set default settings
    func setDefaultSettings() {
        let textFieldArray = [dateOfBirth, ssn, projectNr, firstName, lastName, company, streetAddress, city, state, zipCode]
        
        for textField in textFieldArray {
            textField?.backgroundColor = UIColor.lightGray
            textField?.isUserInteractionEnabled = false
        }
        projectNr.text = "\(counter)"
    }
    
    // Change opacity when sub button is pressed
    func subButtonPressed(type: UIButton) {
        let subButtonsArray = [firstButton, secondButton, thirdButton, fourthButton, fifthButton]
        
        for button in subButtonsArray {
            if type == button {
                button?.alpha = 1.0
            } else {
                button?.alpha = 0.5
            }
        }
    }
    
    // Check age for guest type free child
    func checkAge(bornAt: Date) {
        let age = Date().timeIntervalSince(bornAt)
        let ageLimit = 5.00
        let ageLimitInDays = ageLimit * 365
        
        if age <= ageLimitInDays {
            entrantS = EntrantSubType.guestFreeChild
            subButtonPressed(type: firstButton)
        } else {
            entrantS = EntrantSubType.guestClassic
            subButtonPressed(type: secondButton)
        }
        
        showCorrectFields(type: entrantS!)

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
    @IBOutlet weak var fifthButton: UIButton!

    // Lazi init
    lazy var setDefaultButtonSetUp: UIButton = {
        let button = UIButton(type: .system)
        return button
    }()

    // Check Entrant Type
    @IBAction func checkEntrantType(_ sender: UIButton) {
        
        // set sub buttons to default state
        subButtonPressed(type: setDefaultButtonSetUp)
        
        // set default for text fields
        setDefaultSettings()
        
        if sender == guestButton {
            getTextEntrantSubTypeButtons(type: EntrantType.guest)
            
        } else if sender == managerButton {
            getTextEntrantSubTypeButtons(type: EntrantType.manager)
            
        } else if sender == vendorButton {
            getTextEntrantSubTypeButtons(type: EntrantType.vendor)
            
        } else if sender == employeeButton {
            getTextEntrantSubTypeButtons(type: EntrantType.employee)
        }
        
    }
    
    
    // Check Entrant Sub Type
    @IBAction func checkEntrantSubType(_ sender: UIButton) {
        let entrantSubTypeArray = [EntrantSubType.guestClassic, EntrantSubType.guestVip, EntrantSubType.guestFreeChild, EntrantSubType.guestSenior, EntrantSubType.guestSeasonPass, .hourlyEmployeeMaintenance, .hourlyEmployeeFoodServices, .hourlyEmployeeRideServices, .vendor, .manager,.contractEmployee]
        
        subButtonPressed(type: sender)
        if sender.title(for: .normal) == EntrantSubType.guestFreeChild.rawValue {
            // check for age with date that have been added
            
            let date
            
            checkAge(bornAt: date)
            
        }
        for subType in entrantSubTypeArray {
            if sender.title(for: .normal) == subType.rawValue {
                showCorrectFields(type: subType)
            }
        }
    }
    
    // Generate Pass
    @IBAction func generatePass(_ sender: Any) {

        // måste fixas
        entrant = EntrantSub(entrantType: EntrantType.guest, entrantSubType: EntrantSubType.guestVip, personalInformation: PersonalInformation(firstName: firstName.text, lastName: lastName.text, streetAddress: streetAddress.text, city: city.text, state: state.text, zipCode: zipCode.text, vendorCompany: company.text, dateOfBirth: nil, dateOfVisit: nil))
    }
    
    
    
    // Populate Date
    @IBAction func populateData(_ sender: Any) {
        // check if user interaction = false then populate 
        if dateOfBirth.isUserInteractionEnabled == true {
            dateOfBirth.text = "1988-11-19"
            
        }
        if ssn.isUserInteractionEnabled == true {
            ssn.text = "1234512345"
        }
        if firstName.isUserInteractionEnabled == true {
            firstName.text = "Markus"

        }
        if lastName.isUserInteractionEnabled == true {
            lastName.text = "Flodmark"

        }
        if company.isUserInteractionEnabled == true {
            company.text = "Apple"

        }
        if streetAddress.isUserInteractionEnabled == true {
            streetAddress.text = "1 Infinite Loop"

        }
        if city.isUserInteractionEnabled == true {
            city.text = "Cupertino"

        }
        if state.isUserInteractionEnabled == true {
            state.text = "California"

        }
        if zipCode.isUserInteractionEnabled == true {
            zipCode.text = "95014"

        }
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




