//
//  RPGCharacter.swift
//  ChenKunyu-HW1
//  EID: kc38294
//  Course: CS371L
//
//  Created by Chen, Kunyu on 7/19/18.
//  Copyright © 2018 Chen, Kunyu. All rights reserved.
//

import Foundation

class RPGCharacter {
    let characterName: String
    var characterWeapon: Weapon
    var characterArmor: Armor
    var maxHealth: Int
    var curHealth: Int
    var maxSpell: Int
    var curSpell: Int
    
    init(name: String) {
        characterName = name
        characterWeapon = Weapon(type: "none")
        characterArmor = Armor(type: "none")
        maxSpell = 0
        curSpell = 0
        maxHealth = 0
        curHealth = 0
    }
    
    func unwield() {
        characterWeapon = Weapon(type: "none")
        print("\(characterName) is no longer wielding anything")
    }
    
    func takeOffArmor() {
        characterArmor = Armor(type: "none")
        print("\(characterName) is no longer wearing anything")
    }
    
    func fight(target: RPGCharacter) {
        print("\(characterName) attacks \(target.characterName) with a(n) \(characterWeapon.weaponType)")
        target.curHealth -= characterWeapon.weaponDamage
        print("\(characterName) does \(characterWeapon.weaponDamage) damage to \(target.characterName)")
        print("\(target.characterName) is now down to \(target.curHealth) health")
        checkForDefeat(character: target)
    }
    
    func show() {
        print("\(characterName)\n  Current Health: \(curHealth)\n  Current Spell Points: \(curSpell)\n  Wielding: \(characterWeapon.weaponType)\n  Wearing: \(characterArmor.armorType)\n  Armor class: \(characterArmor.armorClass)")
    }
    
    func checkForDefeat(character: RPGCharacter) {
        if character.curHealth <= 0 {
            print("\(character.characterName) has been defeated!")
        }
    }
}
