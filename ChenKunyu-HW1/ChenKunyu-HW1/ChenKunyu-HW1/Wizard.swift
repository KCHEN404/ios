//
//  Wizard.swift
//  ChenKunyu-HW1
//
//  Created by Chen, Kunyu on 7/19/18.
//  Copyright © 2018 Chen, Kunyu. All rights reserved.
//

import Foundation

class Wizard: RPGCharacter {
    
    override init(name: String) {
        super.init(name: name)
        maxHealth = 16
        maxSpell = 20
        curHealth = maxHealth
        curSpell = maxSpell
    }
    
    func wield(weapon: Weapon) {
        if weapon.weaponType == "dagger" || weapon.weaponType == "staff" || weapon.weaponType == "none" {
            characterWeapon = weapon
            print("\(characterName) is now wielding a(n) \(characterWeapon.weaponType)")
        } else {
            print("Weapon not allowed for this character class.")
        }
    }
    
    func putOnArmor(armor:Armor) {
        print("Armor not allowed for this character class")
    }
    
    func castSpell(spellName: String, target: RPGCharacter) {
        let cost: Int
        let effect: Int
        var healthPoints = 6
        print("\(characterName) casts \(spellName) at \(target.characterName)")
        if spellName == "Fireball" {
            cost = 3
            effect = 5
        } else if spellName == "Lightning Bolt" {
            cost = 10
            effect = 10
        } else if spellName == "Heal" {
            cost = 6
            effect = -6
        } else {
            print("Unknown spell name. Spell failed.")
            return
        }
        if cost > curSpell {
            print("Insufficient spell points")
            return
        }
        if target.curHealth - effect > target.maxHealth {
            healthPoints = target.maxHealth - target.curHealth
            target.curHealth = target.maxHealth
        } else {
            target.curHealth -= effect
        }
        curSpell -= cost
        if spellName == "Heal" {
            print("\(characterName) heals \(target.characterName) for \(healthPoints) health points")
        } else {
            print("\(characterName) does \(effect) damage to \(target.characterName)")
            print("\(target.characterName) is now down to \(target.curHealth) health")
            checkForDefeat(character: target)
        }
        
    }
}

