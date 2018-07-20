//
//  main.swift
//  ChenKunyu-HW1
//  EID: kc38294
//  Course: CS371L
//
//  Created by Chen, Kunyu on 7/19/18.
//  Copyright © 2018 Chen, Kunyu. All rights reserved.
//

import Foundation

var chainMail = Armor(type: "chain")
var sword = Weapon(type: "sword")
var staff = Weapon(type: "staff")
var axe = Weapon(type: "axe")

var gandalf = Wizard(name: "Gandalf the Grey")
gandalf.wield(weapon: staff)

var aragorn = Fighter(name: "Aragorn")
aragorn.putOnArmor(armor: chainMail)
aragorn.wield(weapon: axe)

gandalf.show()
aragorn.show()

gandalf.castSpell(spellName: "Fireball", target: aragorn)
aragorn.fight(target: gandalf)

gandalf.show()
aragorn.show()

gandalf.castSpell(spellName: "Lightning Bolt", target: aragorn)
aragorn.wield(weapon: sword)

gandalf.show()
aragorn.show()

gandalf.castSpell(spellName: "Heal", target: gandalf)
aragorn.fight(target: gandalf)

gandalf.fight(target: aragorn)
aragorn.fight(target: gandalf)

gandalf.show()
aragorn.show()
