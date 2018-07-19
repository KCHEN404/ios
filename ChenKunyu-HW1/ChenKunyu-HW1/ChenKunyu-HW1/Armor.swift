//
//  Armor.swift
//  ChenKunyu-HW1
//
//  Created by Chen, Kunyu on 7/19/18.
//  Copyright © 2018 Chen, Kunyu. All rights reserved.
//

import Foundation

class Armor {
    let armorType: String
    let armorClass: Int
    
    init(type: String) {
        armorType = type
        if armorType == "plate" {
            armorClass = 2
        } else if armorType == "chain" {
            armorClass = 5
        } else if armorType == "leather" {
            armorClass = 8
        } else if armorType == "none" {
            armorClass = 10
        } else {
            armorClass = Int.max
            print("No such armor")
        }
    }
}
