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
        if viewController.entrantS == EntrantSubType.guestFreeChild {
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
        
        // Apply date
        if viewController.entrantS == EntrantSubType.guestFreeChild {
            viewController.dateOfBirth.text = dateFormatter.string(from: sender.date)
        } else {
        }
        
    }
    
    
    @IBAction func button(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    
    
}
