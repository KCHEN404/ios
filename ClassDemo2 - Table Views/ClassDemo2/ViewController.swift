//
//  ViewController.swift
//  CD2
//
//  Created by bulko on 7/23/18.
//  Copyright © 2018 bulko. All rights reserved.
//

import UIKit

public let teams = [
    "Dodgers", "Giants", "Cubs", "Cardinals",
    "Mets", "Braves", "Yankees", "Red Sox",
    "Rangers", "Astros", "Tigers", "Royals"
]
public let cities = [
    "Los Angeles", "San Francisco", "Chicago", "St. Louis",
    "New York", "Atlanta", "New York", "Boston",
    "Texas", "Houston", "Detroit", "Kansas City"
]

let textCellIdentifier = "TextCell"
let teamSegueIdentifier = "teamSegueIdentifier"

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.delegate = self
        tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // To conform to UITableViewDataSource, you must implement
    // 3 methods:
    //    1.  numberOfSectionsInTableView
    //    2.  tableView:numberOfRowsInSection
    //    3.  tableView:cellForRowAtIndexPath
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection
        section: Int) -> Int {
        return teams.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath:
        IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier:
            textCellIdentifier, for: indexPath as IndexPath)
        
        // If you uncomment this, uncomment the performSegue too
        //cell = UITableViewCell(style:UITableViewCellStyle.subtitle,
        //                       reuseIdentifier: textCellIdentifier)
        
        let row = indexPath.row
        cell.textLabel?.text = teams[row]
        
        if indexPath.row < 6 {
            cell.detailTextLabel?.text = "National League"
        } else {
            cell.detailTextLabel?.text = "American League"
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath:
        IndexPath) {
        // add this line in later
        tableView.deselectRow(at: indexPath, animated: true)
        
        let row = indexPath.row
        print(teams[row])
        //performSegue(withIdentifier: "teamSegueIdentifier", sender:
        //    self)
    }
    
    // "textCellIdentifier" is the name given to the prototype text cell in Identity Inspector
    // "myArray" is an array containing data to be loaded into the table

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if  segue.identifier == teamSegueIdentifier,
            let destination = segue.destination as? TeamViewController,
            let teamIndex = tableView.indexPathForSelectedRow?.row
        {
            destination.teamName = teams[teamIndex]
        }
    }
    
}

