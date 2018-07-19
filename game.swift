//: Playground - noun: a place where people can play

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
            print("\(characterName) has been defeated!")
        }
    }
}

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
        let effect:Int
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



