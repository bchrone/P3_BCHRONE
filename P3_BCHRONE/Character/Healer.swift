//
//  Healer.swift
//  P3_BCHRONE
//
//  Created by Bryan CHRONE on 01/01/2021.
//

import Foundation

class Healer: Character {
    
    var heal : Int
    
   override init(name: String, life: Int, type: String, weapon : Weapon) {
        let name = name
        let life = life
        let type = "Guérisseur"
        let weapon = weapon
        self.heal = Int(arc4random_uniform(UInt32(220)))
        super.init(name: name, life: life, type : type, weapon: weapon)
    }
    
   override func healing(character : Character){
    character.life += heal
    print("\(character.name) à été soigné(e) de \(heal) point de vie ! ")
    print("\(character.name) a maintenant \(character.life)")
    }
    
}
