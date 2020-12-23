//
//  Weapon.swift
//  P3_BCHRONE
//
//  Created by Bryan CHRONE on 23/12/2020.
//

import Foundation

class Weapon {
    var name : String//Nom de l'arme sélectionné
    var weaponPoint : Int//Point de l'arme sélectionnée
    
    //Initialisation des variables
    init(name: String,  weaponPoint: Int) {
        self.name = name
        self.weaponPoint = weaponPoint
    }

}

//Class de l'arme épée
class Sword : Weapon {
    
    init() {
        
        let damage = 50 //Dégâts de l'arme
        let name = "Épée"
        
        super.init(name: name, weaponPoint: damage)//Retour des informartions à la classe arme
    }
    
}
// Class de l'arme fusil
class Gun : Weapon {
    
    
    init(){
        let damage = 25 //Dégâts de l'arme
        let name = "Fusil"
        
        
        super.init(name: name, weaponPoint: damage)//Retour des informartions à la classe arme
    }
    
}
