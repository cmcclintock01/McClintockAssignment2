//
//  ViewController.swift
//  McClintock_Assignment01
//
//  Created by McClintock,Corben L on 2/2/23.
//

import UIKit

class ViewController: UIViewController {

    
    //Text Field Outlets
    @IBOutlet weak var firstNameOutlet: UILabel!
    @IBOutlet weak var lastNameOutlet: UILabel!
    @IBOutlet weak var yearOutlet: UILabel!
    //Variables
    var fname = ""
    var lname = ""
    var dob = ""
    var initials = ""
    var currYear = Calendar.current.component(.year, from: Date())
    
    //Label Outlets
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var initialsLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func Submit(_ sender: Any) {
        //Set Variables
        fname = firstNameOutlet.text!
        lname = lastNameOutlet.text!
        dob = yearOutlet.text!
        //Get Initials
        initials = "\(fname.prefix(1))\(lname.prefix(1))"
        //Giving Output Labels
        fullNameLabel.text = "Full Name: \(lname), \(fname) "
        initialsLabel.text = "Initials: \(initials)"
        ageLabel.text = "\(Int(currYear) - Int(dob)!)"
    }
    
    @IBAction func Reset(_ sender: Any) {
    }
    
}

