//
//  ViewController.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Treehouse on 12/8/16.
//  Copyright © 2016 Treehouse. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

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
    
    // MARK: Buttons
    
    //Main row
    @IBOutlet weak var employeeButton: UIButton!
    @IBOutlet weak var managerButton: UIButton!
    @IBOutlet weak var geustButton: UIButton!
    @IBOutlet weak var vendorButton: UIButton!
    
    // Second Row
    @IBOutlet weak var firstButton: UIButton!
    @IBOutlet weak var secondButton: UIButton!
    @IBOutlet weak var thirdButton: UIButton!
    @IBOutlet weak var fourthButton: UIButton!
    
    // Check Entrant Type
    @IBAction func checkEntrantType(_ sender: UIButton) {
    }

    
    // Check Entrant Sub Type
    @IBAction func checkEntrantSubType(_ sender: UIButton) {
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
    
}


