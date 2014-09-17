//
//  ViewController.swift
//  postcard
//
//  Created by Stefan Karos on 9/16/14.
//  Copyright (c) 2014 Stefan George. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    @IBOutlet weak var mailBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // testing
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailBtnPressed(sender: UIButton)
    {
   //code will evaluate when button pressed
        messageLabel.hidden = false
        nameLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        nameLabel.text = enterNameTextField.text
        enterMessageTextField.text = ""
        enterNameTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        
        enterMessageTextField.resignFirstResponder()
        nameLabel.textColor = UIColor.blueColor()
        messageLabel.textColor = UIColor.redColor()
        mailBtn.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

