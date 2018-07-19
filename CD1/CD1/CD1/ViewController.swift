//
//  ViewController.swift
//  CD1
//
//  Created by Chen, Kunyu on 7/19/18.
//  Copyright © 2018 Chen, Kunyu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var returnMessage: UILabel!
    @IBOutlet weak var textBox: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPressed(_ sender: Any) {
        let name = textBox.text!
        let message = name + " pressed the button"
        returnMessage.text = message
    }
}

