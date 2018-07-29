//
//  PopoverViewController.swift
//  ChenKunyu-HW5
//  EID: kc38294
//  Course: CS371L
//
//  Created by Chen, Kunyu on 7/27/18.
//  Copyright © 2018 Chen, Kunyu. All rights reserved.
//

import UIKit

protocol NoteDelegate {
    func noteCreated(newNote: Note)
}

class PopoverViewController: UIViewController, UIPopoverControllerDelegate {
    
    var delegate: NoteDelegate?

    @IBOutlet weak var noteTextField: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func discardPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func savePressed(_ sender: Any) {
        let note = Note(s: noteTextField.text)
        if delegate != nil {
            delegate?.noteCreated(newNote: note) // send new note to main view controller using delegate/protocol
        }
        dismiss(animated: true, completion: nil)
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
