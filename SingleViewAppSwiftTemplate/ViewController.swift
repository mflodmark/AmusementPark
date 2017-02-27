//
//  ViewController.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Treehouse on 12/8/16.
//  Copyright © 2016 Treehouse. All rights reserved.
//

import UIKit

// Global Variable
var entrant: EntrantSub? = nil
var entrantT: EntrantType? = nil
var entrantS: EntrantSubType? = nil


class ViewController: UIViewController, UITextFieldDelegate {
    
    // Declarations
    var counter = 1
    // Create a DatePicker
    let datePicker: UIDatePicker = UIDatePicker()
    let dateButton = UIButton()

    
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
    
    /*
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
    }*/
    
    // MARK: Functions
    
    func showAlert(title: String) {
        let alertController = UIAlertController(title: "\(title)", message: "Provide info to start", preferredStyle: .alert)
        
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(action)
        
        present(alertController, animated: true, completion: nil)
    }
    
    
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

        if type == .guestClassic || type == .guestVip {
            // do nothing
        }
        
        if  type == .guestFreeChild {
            
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
            entrantT = EntrantType.guest
            print("EntrantT -----> " + (entrantT?.rawValue)!)
            
        } else if sender == managerButton {
            getTextEntrantSubTypeButtons(type: EntrantType.manager)
            entrantT = EntrantType.manager

            
        } else if sender == vendorButton {
            getTextEntrantSubTypeButtons(type: EntrantType.vendor)
            entrantT = EntrantType.vendor

            
        } else if sender == employeeButton {
            getTextEntrantSubTypeButtons(type: EntrantType.employee)
            entrantT = EntrantType.employee

        }
        
    }
    
    
    // Check Entrant Sub Type
    @IBAction func checkEntrantSubType(_ sender: UIButton) {
        let entrantSubTypeArray = [EntrantSubType.guestClassic, EntrantSubType.guestVip, EntrantSubType.guestFreeChild, EntrantSubType.guestSenior, EntrantSubType.guestSeasonPass, .hourlyEmployeeMaintenance, .hourlyEmployeeFoodServices, .hourlyEmployeeRideServices, .vendor, .manager,.contractEmployee]
        
        subButtonPressed(type: sender)
        
        for subType in entrantSubTypeArray {
            if sender.title(for: .normal) == subType.rawValue {
                
                showCorrectFields(type: subType)
                entrantS = subType
                print("EntrantS -------> " + (entrantS?.rawValue)!)
            }
        }
    }
    
    // Generate Pass
    @IBAction func generatePass(_ sender: Any) {

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
    
    
    // MARK: Segue
    
    func validateInfo() throws {
        if firstName.isUserInteractionEnabled == true {
            guard firstName.text != "" else {
                throw InformationError.firstNameNotProvided
            }
        }
        if lastName.isUserInteractionEnabled == true {
            guard lastName.text != "" else {
                throw InformationError.lastNameNotProvided
            }
        }
        
        if streetAddress.isUserInteractionEnabled == true {
            guard streetAddress.text != "" else {
                throw InformationError.streetAddressNotProvided
            }
        }
        
        if city.isUserInteractionEnabled == true {
            guard city.text != "" else {
                throw InformationError.cityNotProvided
            }
        }
        
        if state.isUserInteractionEnabled == true {
            guard state.text != "" else {
                throw InformationError.stateNotProvided
            }
        }
        
        if zipCode.isUserInteractionEnabled == true {
            guard zipCode.text != "" else {
                throw InformationError.zipCodeNotProvided
            }
        }
        
        if company.isUserInteractionEnabled == true {
            guard company.text != "" else {
                throw InformationError.vendorCompanyNotProvided
            }
        }
        
        if dateOfBirth.isUserInteractionEnabled == true {
            guard dateOfBirth.text != "" else {
                throw InformationError.dateOfBirthNotProvided
            }
        }
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if identifier == "date" {
            if firstButton.title(for: .normal) == EntrantSubType.guestFreeChild.rawValue {
                //perform segue
                return true
            }
            //cancel segue
            return false
        }
        
        if identifier == "segue" {
            counter += 1
        }

        // by default
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "segue" {
            
            // catch errors
            do {
                try validateInfo()
            } catch InformationError.firstNameNotProvided {
                showAlert(title: InformationErrorText.firstNameNotProvided.rawValue )
                print("Missing first name, please add first name and try again")
            } catch InformationError.lastNameNotProvided {
                showAlert(title: InformationErrorText.lastNameNotProvided.rawValue )
                print("Missing last name, please add last name and try again")
            } catch InformationError.cityNotProvided {
                showAlert(title: InformationErrorText.cityNotProvided.rawValue )
                print("Missing city, please add city and try again")
            } catch InformationError.stateNotProvided {
                showAlert(title: InformationErrorText.stateNotProvided.rawValue )
                print("Missing state, please add state and try again")
            } catch InformationError.streetAddressNotProvided {
                showAlert(title: InformationErrorText.streetAddressNotProvided.rawValue )
                print("Missing street address, please add street address and try again")
            } catch InformationError.zipCodeNotProvided {
                showAlert(title: InformationErrorText.zipCodeNotProvided.rawValue )
                print("Missing zip code, please add zip code and try again")
            }  catch InformationError.dateOfBirthNotProvided {
                showAlert(title: InformationErrorText.dateOfBirthNotProvided.rawValue )
                print("Missing date of birth, please add date of birth and try again")
            } catch InformationError.dateOfVisitNotProvided {
                showAlert(title: InformationErrorText.dateOfVisitNotProvided.rawValue )
                print("Missing date of visit, please add date of visit and try again")
            } catch InformationError.vendorCompanyNotProvided {
                showAlert(title: InformationErrorText.vendorCompanyNotProvided.rawValue )
                print("Missing vendor company, please add vendor company and try again")
            } catch {
                fatalError("Fatal error!")
            }

            //
            
            
            entrant = EntrantSub(entrantType: entrantT!, entrantSubType: entrantS!, personalInformation: PersonalInformation(firstName: firstName.text, lastName: lastName.text, streetAddress: streetAddress.text, city: city.text, state: state.text, zipCode: zipCode.text, vendorCompany: company.text, dateOfBirth: dateOfBirth.text, dateOfVisit: dateOfBirth.text))
            
        
            
            print("Entrant ------> " + entrant!.entrantType.rawValue)
            print("Entrant ------> " + entrant!.entrantSubType.rawValue)
        }
    }
}

