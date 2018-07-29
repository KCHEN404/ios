//
//  ViewController.swift
//  ChenKunyu-HW5
//  EID: kc38294
//  Course: CS371L
//
//  Created by Chen, Kunyu on 7/27/18.
//  Copyright © 2018 Chen, Kunyu. All rights reserved.
//

import UIKit

var notes = [Note(s: "Welcome to Quick Notes!")] // Notes Data

class ViewController: UIViewController, NoteDelegate, UITableViewDataSource, UITableViewDelegate, UIPopoverPresentationControllerDelegate {
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
        return notes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath:
        IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier:
            "textNoteTableViewCell", for: indexPath as IndexPath) as! NoteTableViewCell
        
        let row = indexPath.row
        cell.createDate.text = notes[row].getDate()
        cell.createTime.text = notes[row].getTime()
        cell.bodyLabel.text = notes[row].str
        
        return cell
    }
    
    // "textCellIdentifier" is the name given to the prototype text cell in Identity Inspector
    // "myArray" is an array containing data to be loaded into the table
 
    func noteCreated(newNote: Note) {
        notes.insert(newNote, at: 0) // add new note to array
        tableView.reloadData() // reload the tableview to show the new note
    }

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
        if segue.identifier == "showPopover", let destination = segue.destination as? PopoverViewController {
            destination.popoverPresentationController?.delegate = self // force popover on iPhone
            destination.delegate = self
        }

    }
    
    func adaptivePresentationStyle(for controller: UIPresentationController, traitCollection: UITraitCollection) -> UIModalPresentationStyle {
        return UIModalPresentationStyle.none // force popover on iPhone
    }
    
}
