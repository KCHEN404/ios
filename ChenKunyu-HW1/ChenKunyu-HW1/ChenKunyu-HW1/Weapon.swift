//
//  Weapon.swift
//  ChenKunyu-HW1
//
//  Created by Chen, Kunyu on 7/19/18.
//  Copyright © 2018 Chen, Kunyu. All rights reserved.
//

import Foundation

class Weapon {
    let weaponType: String
    let weaponDamage: Int
    
    init(type: String) {
        weaponType = type
        if weaponType == "dagger" {
            weaponDamage = 4
        } else if weaponType == "axe" {
            weaponDamage = 6
        } else if weaponType == "staff" {
            weaponDamage = 6
        } else if weaponType == "sword" {
            weaponDamage = 10
        } else if weaponType == "none" {
            weaponDamage = 1
        } else {
            weaponDamage = 0
            print("No such weapon")
        }
    }
}
