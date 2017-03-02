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
    var stringFromDatePicker: String? = ""
    
    
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
        datePicker.addTarget(self, action: #selector(DateViewController.datePickerValueChanged(_:)), for: .valueChanged)
        datePicker.datePickerMode = UIDatePickerMode.date
        self.view.addSubview(datePicker)
    
     
    }
    
    func datePickerValueChanged(_ sender: UIDatePicker){
        
        // Create date formatter
        let dateFormatter: DateFormatter = DateFormatter()
        
        // Set date format
        dateFormatter.dateFormat = "yyyy-MM-dd"
        dateFromDatePicker = datePicker.date
        
        print("Date -------> " + dateFormatter.string(from: sender.date))
        
        stringFromDatePicker = dateFormatter.string(from: sender.date)

        
    }
    
    // Check age for guest type free child
    func checkAge(bornAt: Date) -> Bool {
        let age = Date().timeIntervalSince(bornAt)
        let ageLimit = 5.00
        let ageLimitInSeconds = ageLimit * 365 * 24 * 60 * 60
        
        print("Age------------->" + "\(age)")
        print(ageLimitInSeconds)
        
        if age <= ageLimitInSeconds {
            return true
        }
        return false
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if identifier == "back" {
            if let date = dateFromDatePicker {
                if checkAge(bornAt: date) == true {
                    if let date = stringFromDatePicker {
                        textToBirthDate = date
                        print("text --------> \(textToBirthDate!)")
                        dismiss(animated: true, completion: nil)
                        return true
                    }
                } else {
                    label.text = "Age must be 5 years or lower"
                    return false
                }
            }
        }
        // by default
        return true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "back" {
            if let text = textToBirthDate {
                //viewController.dateOfBirth.text = "markus"
            }
        }
    }

    
    
    
}
    
    
