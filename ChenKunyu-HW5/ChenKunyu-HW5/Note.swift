//
//  Note.swift
//  ChenKunyu-HW5
//  EID: kc38294
//  Course: CS371L
//
//  Created by Chen, Kunyu on 7/27/18.
//  Copyright © 2018 Chen, Kunyu. All rights reserved.
//

import Foundation

class Note {
    private var date: NSDate
    var str: String
    init(s: String) {
        date = NSDate()
        str = s
    }
    func getDate() -> String {
        let myDateFormat = DateFormatter()
        myDateFormat.dateFormat = "MM/dd/yyyy"
        return myDateFormat.string(from: date as Date)
    }
    func getTime() -> String {
        let myDateFormat = DateFormatter()
        myDateFormat.dateFormat = "HH:mm"
        return myDateFormat.string(from: date as Date)
    }
    func update(s: String) {
        str = s
        date = NSDate()
    }
}
