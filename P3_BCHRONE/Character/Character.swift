//
//  Character.swift
//  P3_BCHRONE
//
//  Created by Bryan CHRONE on 23/12/2020.
//

import Foundation

class Character {
    
    var weapon : Weapon //Déclaration de la variable weapon avec comme type la class Weapon
    
    var name : String
    var life : Int
    var type : String
    


    init(name: String, life: Int, type : String, weapon: Weapon) {
        self.name = name
        self.life = life
        self.weapon = weapon //Character weapon
        self.type = type
        

    }
    
    
    /*===================================================================================
    ====================================================================================
    ====================================================================================
                    Function allows to attack with character parameter
    ====================================================================================
    ====================================================================================
    ===================================================================================*/
    
    func attack(character: Character) {
        character.life -= weapon.weaponPoint
        
        if character.life > 0 {
        print("\n\(character.name) à été attaqué(e) par \(name) et à maintenant \(character.life) point de vie ! ")
        }
        
    }
    
    
    
    func healing(character: Character) {
        print("Vous soignez votre personnage")
        }


}















