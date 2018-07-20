//
//  Armor.swift
//  ChenKunyu-HW1
//  EID: kc38294
//  Course: CS371L
//
//  Created by Chen, Kunyu on 7/19/18.
//  Copyright © 2018 Chen, Kunyu. All rights reserved.
//

import Foundation

class Armor {
    let armorType: String
    let armorClass: Int
    
    init(type: String) {
        if type == "plate" {
            armorClass = 2
        } else if type == "chain" {
            armorClass = 5
        } else if type == "leather" {
            armorClass = 8
        } else if type == "none" {
            armorClass = 10
        } else {
            armorType = "none"
            armorClass = 10
            print("No such armor") // Armor type invalid
            return
        }
        armorType = type
    }
}
