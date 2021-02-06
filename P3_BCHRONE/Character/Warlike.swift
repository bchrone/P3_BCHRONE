//
//  Diane.swift
//  P3_BCHRONE
//
//  Created by Bryan CHRONE on 30/12/2020.
//

import Foundation


class Warlike : Character {
    
            
    override init (name: String, life: Int, type : String, weapon : Weapon) {
        let name = name//Character name
        let life = life //Character life
        let type = "Guerrier"
        let weapon = weapon
    super.init(name: name, life: life, type: type, weapon : weapon)
    }
    
    override func attack(character: Character) {
        character.life -= weapon.weaponPoint
        
        if character.life > 0 {
        print("\n\(character.name) à été attaqué(e) par \(name) et à maintenant \(character.life) point de vie !")
        }
    }
    
    
}


