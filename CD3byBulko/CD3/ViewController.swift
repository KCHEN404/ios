//
//  ViewController.swift
//  CD3
//
//  Created by bulko on 7/25/18.
//  Copyright © 2018 bulko. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    let textCellIdentifier = "TextCell"
    
    let choices = [
    "Simple UIAlertViewController",
    "UIAlertViewController with Text Field",
    "UIAlertViewController with Multiple Buttons",
    "Standard UIActionSheet"
    ]
    
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
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection
        section: Int) -> Int {
        return choices.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath:
        IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier:
            textCellIdentifier, for: indexPath as IndexPath)
        
        let row = indexPath.row
        cell.textLabel?.text = choices[row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let rowValue = choices[indexPath.row]
        
        switch rowValue {
            
        case "Simple UIAlertViewController":
            
            let controller = UIAlertController(
                title: "Alert Controller",
                message: rowValue,
                preferredStyle: .alert)
            
            controller.addAction(UIAlertAction(title: "Cancel", style: .cancel))
            controller.addAction(UIAlertAction(title: "OK", style: .default))
            present(controller,animated:true,completion:nil)
            
        case "UIAlertViewController with Text Field":
            let controller = UIAlertController(
                title: "Alert Controller",
                message: rowValue,
                preferredStyle: .alert)
            
            controller.addAction(UIAlertAction(title: "Cancel",style: .cancel))
            
            controller.addTextField(configurationHandler: {
                (textField:UITextField!) in textField.placeholder = "Enter something"
            })
            
            controller.addAction(UIAlertAction(
            title:"OK",
            style:.default,
            handler: {
                (paramAction:UIAlertAction!) in
                if let textField = controller.textFields {
                    let theTextField = textField as [UITextField]
                    let enteredText = theTextField[0].text
                    print(enteredText!) } }
            ))
            
            present(controller,animated:true,completion:nil)
            
        case "UIAlertViewController with Multiple Buttons":
            let controller = UIAlertController(
                title: "Alert Controller",
                message: rowValue,
                preferredStyle: .alert)
            
            controller.addAction(UIAlertAction(title: "One",style: .default))
            controller.addAction(UIAlertAction(title: "Two",style: .default))
            controller.addAction(UIAlertAction(title: "Three",style: .default))
            controller.addAction(UIAlertAction(title: "Four",style: .default))
            controller.addAction(UIAlertAction(title: "Cancel",style: .cancel))
            present(controller,animated:false,completion:nil)
            
        case "Standard UIActionSheet":
            let controller = UIAlertController(
                title: "Action Sheet",
                message: rowValue,
                preferredStyle: .actionSheet)
            
            let destroyAction = UIAlertAction(
                title: "Delete",
                style: .destructive,
                handler:{(action) in
                    print("Delete data")}
            )
            controller.addAction(destroyAction)
            
            let OKAction = UIAlertAction(
                title: "OK",
                style: .default,
                handler:{(action) in
                    print("Accept data")}
            )
            controller.addAction(OKAction)
            
            let cancelAction = UIAlertAction(
                title: "Cancel",
                style: .cancel,
                handler:{(action) in
                    print("Cancel action")}
            )
            controller.addAction(cancelAction)

            present(controller,animated:true,completion:nil)
            
        default:
            let controller = UIAlertController(
                title: "Unidentified Alert Type",
                message: rowValue,
                preferredStyle: .alert)
            controller.addAction(UIAlertAction(title:"This should never happen!",style:.default))
            present(controller,animated:false,completion:nil)
            
        }
        
        
        
        
        
        
        
        
    }

}

