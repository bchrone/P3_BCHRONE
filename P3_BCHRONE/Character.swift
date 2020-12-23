//
//  Character.swift
//  P3_BCHRONE
//
//  Created by Bryan CHRONE on 23/12/2020.
//

import Foundation

class Character {
    
    var name : String
    var life : Int
    var weapon : Weapon //Déclaration de la variable weapon avec comme type la class Weapon
    
    init(name: String, life: Int, weapon: Weapon) {
        self.name = name
        self.life = life
        self.weapon = weapon
    }
    
    func attack(character: Character) {
        character.life -= weapon.weaponPoint
        print("\(character.name) à été attaquer et à maintenant \(character.life) point de vie ! ")
        }
}
//Premier Personnage
class Elizabeth: Character{
    
    var heal = 25

    
    init (){
        let name = "Élizabeth"
        let life = 1000
        let gun = Gun()
        super.init(name: name, life: life, weapon: gun)//Retour des informartions à la classe personnage
    }
    //cette fonction attaque sera excuter à la place de la fonction qui appartient à Character
    override func attack(character: Character) {
        
        super.attack(character: character)
        life += heal
        print("\(name) a récupérer \(heal) points de vie")
    }

}

//Deuxieme personnage
class Meliodas : Character{
        
    init() {
        let name = "Méliodas"
        let life = 750
        let sword = Sword()
        super.init(name: name, life: life, weapon: sword)//Retour des informartions à la classe personnage
    }

}
