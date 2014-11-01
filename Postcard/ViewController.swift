//
//  ViewController.swift
//  Postcard
//
//  Created by anand sai krishna khandrika on 01/11/14.
//  Copyright (c) 2014 anand sai krishna khandrika. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var sendMessageButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMessageButtonPressed(sender: UIButton) {
//        sender.backgroundColor=UIColor.blueColor();
        messageLabel.text="Hi " + enterNameTextField.text+"!! "+enterMessageTextField.text;
        messageLabel.hidden=false;
        enterMessageTextField.text=""
        enterNameTextField.text=""
        enterMessageTextField.resignFirstResponder()
        
        sendMessageButton.setTitle("Message Sent!!", forState: UIControlState.Normal)
        
    }

}

