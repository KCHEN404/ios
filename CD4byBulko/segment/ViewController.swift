//
//  ViewController.swift
//  segment
//
//  Created by bulko on 7/27/18.
//  Copyright © 2018 bulko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var segCtrl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        segCtrl.selectedSegmentIndex = 2
        textLabel.text = "Third is selected by default."
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onSegmentChanged(_ sender: Any) {
        
        switch segCtrl.selectedSegmentIndex {
        case 0:
            textLabel.text = "First is selected."
            performSegue(withIdentifier: "VC1", sender: self)
        case 1:
            textLabel.text = "Second is selected."
            performSegue(withIdentifier: "VC2", sender: self)
        case 2:
            textLabel.text = "Third is selected."
        case 3:
            textLabel.text = "Fourth is selected."
            self.performSegue(withIdentifier: "showPopover", sender: self)
        default:
            textLabel.text = "Error"
        }
    }
    
    @IBAction func onButtonPressed(_ sender: Any) {
        self.performSegue(withIdentifier: "showPopover", sender: self)
    }
}

