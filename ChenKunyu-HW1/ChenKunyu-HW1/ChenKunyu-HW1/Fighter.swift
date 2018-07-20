//
//  Fighter.swift
//  ChenKunyu-HW1
//  EID: kc38294
//  Course: CS371L
//
//  Created by Chen, Kunyu on 7/19/18.
//  Copyright © 2018 Chen, Kunyu. All rights reserved.
//

import Foundation

class Fighter: RPGCharacter {
    
    override init(name: String) {
        super.init(name: name)
        maxHealth = 40
        maxSpell = 0
        curHealth = maxHealth
        curSpell = maxSpell
    }
    
    func wield(weapon: Weapon) {
        characterWeapon = weapon
        print("\(characterName) is now wielding a(n) \(characterWeapon.weaponType)")
    }
    
    func putOnArmor(armor: Armor) {
        characterArmor = armor
        print("\(characterName) is now wearing \(characterArmor.armorType)")
    }
    
}
