//
//  CalViewController.swift
//  ChenKunyu-HW4
//  EID: kc38294
//  Course: CS371L
//
//  Created by Chen, Kunyu on 7/26/18.
//  Copyright © 2018 Chen, Kunyu. All rights reserved.
//

import UIKit

class CalViewController: UIViewController {
    
    @IBOutlet weak var operatorLabel: UILabel!
    @IBOutlet weak var operand2: UITextField!
    @IBOutlet weak var operand1: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    var operatorChosen = String()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        operatorLabel.text = operatorChosen
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        if let operandVal1 = Float(operand1.text!), let operandVal2 = Float(operand2.text!) {
            switch operatorChosen {
            case "Add":
                resultLabel.text = String(operandVal1 + operandVal2)
            case "Subtract":
                resultLabel.text = String(operandVal1 - operandVal2)
            case "Multiply":
                resultLabel.text = String(operandVal1 * operandVal2)
            case "Divide":
                resultLabel.text = String(operandVal1 / operandVal2)
            default:
                break
            }
        } else {
            resultLabel.text = "Invalid operands"
        }
        
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
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
