//
//  ViewController.swift
//  Balance Dashboard
//
//  Created by Demonic Penguin on 5/12/15.
//  Copyright (c) 2015 Legendary Phoenix. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIAlertViewDelegate {
    
    @IBOutlet weak var name:UILabel?
    @IBOutlet weak var equip:UILabel?
    
    var enterName = UIAlertView()
    var textField = UITextField(frame: CGRectMake(0, 0, 10, 10))

    override func viewDidLoad() {
        // Do any additional setup after loading the view, typically from a nib.
        enterName.title = "Welcome"
        enterName.message = "Please Enter Your Name"
        enterName.addButtonWithTitle("Enter")
        enterName.delegate = self
        enterName.alertViewStyle = UIAlertViewStyle.PlainTextInput
        enterName.show()
        
        textField = enterName.textFieldAtIndex(0)!
        
        textField.placeholder = "Name"

        super.viewDidLoad()
        // name?.textColor = UIColor.blackColor()
        
        equip?.text = "Equipped"
        // equip?.textColor = UIColor.blackColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func alertView(alertView: UIAlertView, clickedButtonAtIndex buttonIndex: Int) {
        switch buttonIndex {
        case 0:
            name?.text = textField.text
            let usersName = String(textField.text)
        default:
            println("something")
        }

    }

}
