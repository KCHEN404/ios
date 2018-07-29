//
//  ViewController.swift
//  ChenKunyu-HW4
//  EID: kc38294
//  Course: CS371L
//
//  Created by Chen, Kunyu on 7/26/18.
//  Copyright © 2018 Chen, Kunyu. All rights reserved.
//

import UIKit

public let operations = ["Add", "Subtract", "Multiply", "Divide"]

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
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
        return operations.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath:
        IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier:
            "tableCell", for: indexPath as IndexPath)
        
        let row = indexPath.row
        cell.textLabel?.text = operations[row]
        
        return cell
    }
    
    // "textCellIdentifier" is the name given to the prototype text cell in Identity Inspector
    // "myArray" is an array containing data to be loaded into the table

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "calSegue", let destination = segue.destination as? CalViewController, let operatorIndex = tableView.indexPathForSelectedRow?.row {
            destination.operatorChosen = operations[operatorIndex]
            }
    }

}
