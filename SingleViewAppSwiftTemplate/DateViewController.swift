//
//  DateViewController.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Markus Flodmark on 2017-02-26.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation
import UIKit

class DateViewController: UIViewController {
    
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var label: UILabel!
    
    let viewController = ViewController()
    var dateFromDatePicker: Date? = nil
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        checkSub()
        showDatePicker()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
    }
    
    func checkSub() {
        if entrantS == EntrantSubType.guestFreeChild {
            label.text = "Add birth date"
        } else {
            //label.text = "Add visit date"
        }
    }
    
    
     func showDatePicker() {
     
     // Datepicker
     //datePicker.timeZone = NSTimeZone.local
     datePicker.addTarget(self, action: #selector(DateViewController.datePickerValueChanged(_:)), for: .valueChanged)
     //datePicker.datePickerMode = UIDatePickerMode.date
     self.view.addSubview(datePicker)
     
    }
    
    func datePickerValueChanged(_ sender: UIDatePicker){
        
        // Create date formatter
        let dateFormatter: DateFormatter = DateFormatter()
        
        // Set date format
        dateFormatter.dateFormat = "yyyy-MM-dd"
        dateFromDatePicker = datePicker.date
        
        // Apply date
        if entrantS == EntrantSubType.guestFreeChild {
            viewController.dateOfBirth.text = dateFormatter.string(from: sender.date)
        } else {
        }
        
    }
    
    // Check age for guest type free child
    func checkAge(bornAt: Date) -> Bool {
        let age = Date().timeIntervalSince(bornAt)
        let ageLimit = 5.00
        let ageLimitInDays = ageLimit * 365
        
        if age <= ageLimitInDays {
            //entrantS = EntrantSubType.guestFreeChild
            //subButtonPressed(type: firstButton)
            return true
        } else {
            //entrantS = EntrantSubType.guestClassic
            //subButtonPressed(type: secondButton)
            return false
        }
        
        //showCorrectFields(type: entrantS!)
        
        
    }
    
    
    @IBAction func button(_ sender: Any) {
        
        if checkAge(bornAt: dateFromDatePicker!) == true {
            
            label.text = "Age for a child pass must be 5 years or lower"
        } else {
            dismiss(animated: true, completion: nil)
        }
    }
    
    
    
}
