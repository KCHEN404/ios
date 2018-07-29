//
//  PopoverViewController.swift
//  segment
//
//  Created by bulko on 7/27/18.
//  Copyright © 2018 bulko. All rights reserved.
//

import UIKit

class PopoverViewController: UIViewController, UIPopoverControllerDelegate {
    
    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textView.text = "But soft! What light through yonder window breaks? 'Tis the east, and Juliet is the sun."

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onDismissClicked(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

}
