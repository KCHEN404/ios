//
//  TeamViewController.swift
//  ClassDemo2
//
//  Created by bulko on 7/24/18.
//  Copyright © 2018 bulko. All rights reserved.
//

import UIKit

class TeamViewController: UIViewController {
    
    @IBOutlet weak var teamLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    
    var teamName = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated:Bool) {
        teamLabel.text = "Team selected: \(teamName)"
        let teamIndex = teams.index(of: teamName)
        cityLabel.text = "City: \(cities[teamIndex!])"
    }


}
