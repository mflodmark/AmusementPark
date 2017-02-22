//
//  ModalController.swift
//  SingleViewAppSwiftTemplate
//
//  Created by Markus Flodmark on 2017-02-20.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation
import UIKit

class ModalViewController: ViewController {
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var topButton: UIButton!
    @IBOutlet weak var belowButton: UIButton!
    
    @IBAction func doneButton(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

}
