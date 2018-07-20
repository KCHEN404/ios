//
//  ViewController.swift
//  ChenKunyu-HW2
//  EID: kc38294
//  Course: CS371L
//
//  Created by Chen, Kunyu on 7/20/18.
//  Copyright © 2018 Chen, Kunyu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var idText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var loginStatus: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // This method is called when the user touches the Return key on the
    // keyboard. The 'textField' passed in is a pointer to the textField
    // widget the cursor was in at the time they touched the Return key on
    // the keyboard.
    //
    // From the Apple documentation: Asks the delegate if the text field
    // should process the pressing of the return button.
    //
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    // Called when the user touches on the main view (outside the UITextField).
    //
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    @IBAction func buttonPressed(_ sender: Any) {
        if (idText.text?.isEmpty)! || (passwordText.text?.isEmpty)! {
            loginStatus.text = "Invalid login"
        } else {
            loginStatus.text = "\(idText.text ?? "user") logged in"
        }
    }
}

