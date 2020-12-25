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
    /*===================================================================================
    ====================================================================================
    ====================================================================================
                    Function allows to attack with character parameter
    ====================================================================================
    ====================================================================================
    ===================================================================================*/
    
    func attack(character: Character) {
        character.life -= weapon.weaponPoint
        print("\(character.name) à été attaquer et à maintenant \(character.life) point de vie ! ")
        }
}

//first character
class Elizabeth: Character{
    
    var heal = 220

    
    init (){
        let name = "Élizabeth"
        let life = 1925
        let gun = Magic()
        super.init(name: name, life: life, weapon: gun)//Retour des informartions à la classe personnage
    }
    //cette fonction attaque sera excuter à la place de la fonction qui appartient à Character
    func heal(character: Character) {
        
        character.life += heal
        print("\(name) a récupérer \(heal) points de vie")
    }

}

//Deuxieme personnage
class Meliodas : Character{
        
    init() {
        let name = "Méliodas"//Charater name
        let life = 3370 //Character life
        let sword = SwordOfMeliodas() //Character weapon
        super.init(name: name, life: life, weapon: sword)//Retour des informartions à la classe mère personnage
    }
}


class Diane : Character{
        
    init() {
        let name = "Diane"//Charater name
        let life = 3250 //Character life
        let sword = Gideon() //Character weapon
        super.init(name: name, life: life, weapon: sword)//Retour des informartions à la classe mère personnage
    }

}

class Ban : Character{
        
    init() {
        let name = "Ban"//Charater name
        let life = 3220 //Character life
        let sword = Magic() //Character weapon
        super.init(name: name, life: life, weapon: sword)//Retour des informartions à la classe mère personnage
    }

}

class King : Character{
        
    init() {
        let name = "King"//Charater name
        let life = 4190 //Character life
        let sword = Spear() //Character weapon
        super.init(name: name, life: life, weapon: sword)//Retour des informartions à la classe mère personnage
    }

}

class Merlin : Character{
        
    init() {
        let name = "Merlin"//Charater name
        let life = 4710 //Character life
        let sword = Aldan() //Character weapon
        super.init(name: name, life: life, weapon: sword)//Retour des informartions à la classe mère personnage
    }

}

class Gowther : Character{
        
    init() {
        let name = "Gowther"//Charater name
        let life = 3100 //Character life
        let sword = Herritt() //Character weapon
        super.init(name: name, life: life, weapon: sword)//Retour des informartions à la classe mère personnage
    }

}

class Escanor : Character{
        
    init() {
        let name = "Escanor"//Charater name
        let life = 3250 //Character life
        let sword = Lostvayne() //Character weapon
        super.init(name: name, life: life, weapon: sword)//Retour des informartions à la classe mère personnage
    }

}
