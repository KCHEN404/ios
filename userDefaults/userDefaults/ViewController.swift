//
//  ViewController.swift
//  ClassDemoUserDefaults
//
//  Created by bulko on 2/24/18.
//  Copyright © 2018 bulko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        demoUserDefaults()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func demoUserDefaults() {
        
        print("\n\nStarting User Defaults demo")
        
        // Define keys for the values to store
        let kUserIdKey = "userId"
        let kTotalKey = "total"
        let kNameKey = "name"
        
        // Define the values to store
        let userId = 900
        let total = 1275.55
        let name = "University of Texas"
        
        // Get a reference to the global user defaults object
        let defaults = UserDefaults.standard
        
/*        // Store various values
        defaults.set(userId, forKey: kUserIdKey)
        defaults.set(total, forKey: kTotalKey)
        defaults.set(name, forKey: kNameKey)
        print("Data stored into User Defaults")   */
        
        // Retrieve the previously stored values
        let retrievedUserId = defaults.integer(forKey: kUserIdKey)
        let retrievedTotal = defaults.double(forKey: kTotalKey)
        let retrievedName = defaults.object(forKey: kNameKey)
        
        // A simple way of dumping everything in User Defaults to a dictionary
        // print(defaults.dictionaryRepresentation())
        print("Contents retrieved from User Defaults:")
        print("   retrievedUserId:  \(retrievedUserId)")
        print("   retrievedTotal:   \(retrievedTotal)")
        print("   retrievedName:    \(retrievedName!)")

        
    }
    
}


