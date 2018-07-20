//
//  Weapon.swift
//  ChenKunyu-HW1
//  EID: kc38294
//  Course: CS371L
//
//  Created by Chen, Kunyu on 7/19/18.
//  Copyright © 2018 Chen, Kunyu. All rights reserved.
//

import Foundation

class Weapon {
    let weaponType: String
    let weaponDamage: Int
    
    init(type: String) {
        if type == "dagger" {
            weaponDamage = 4
        } else if type == "axe" {
            weaponDamage = 6
        } else if type == "staff" {
            weaponDamage = 6
        } else if type == "sword" {
            weaponDamage = 10
        } else if type == "none" {
            weaponDamage = 1
        } else {
            weaponType = "none"
            weaponDamage = 1
            print("No such weapon") // Weapon type invalid
            return
        }
        weaponType = type
    }
}
