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


class SwordOfMeliodas : Weapon {
    
    init() {
        
        let damage = 450 //Dégâts de l'arme
        let name = "Épée du Dragon"//Arme de Méliodas
        
        super.init(name: name, weaponPoint: damage)//Retour des informartions à la classe arme
    }
    
}

// Class de l'arme fusil
class Spear : Weapon {
    
    
    init(){
        let damage = 300 //Dégâts de l'arme
        let name = "Lance Spirituelle Chastiefol"//King
        
        
        super.init(name: name, weaponPoint: damage)//Retour des informartions à la classe arme
    }
    
}

class Gideon : Weapon {
    
    
    init(){
        let damage = 390 //Dégâts de l'arme
        let name = "Gideon"//Diane
        
        
        super.init(name: name, weaponPoint: damage)//Retour des informartions à la classe arme
    }
    
}

class Herritt : Weapon {
    
    
    init(){
        let damage = 365 //Dégâts de l'arme
        let name = "Double Arc Herritt"//Gowther
        
        
        super.init(name: name, weaponPoint: damage)//Retour des informartions à la classe arme
    }
    
}

class Aldan : Weapon {
    
    
    init(){
        let damage = 400 //Dégâts de l'arme
        let name = "Étoile du Matin Aldan"//Merlin
        
        
        super.init(name: name, weaponPoint: damage)//Retour des informartions à la classe arme
    }
    
}

class Lostvayne : Weapon {
    
    
    init(){
        let damage = 600 //Dégâts de l'arme
        let name = "Étoile du Matin Aldan"//Arme aléatoire
        
        
        super.init(name: name, weaponPoint: damage)//Retour des informartions à la classe arme
    }
    
}

class Dague : Weapon {
    
    
    init(){
        let damage = 45 //Dégâts de l'arme
        let name = "Dague de Cenette"//Arme aléatoire
        
        
        super.init(name: name, weaponPoint: damage)//Retour des informartions à la classe arme
    }
    
}


//Class de l'arme épée
class Sword : Weapon {
    
    init() {
        
        let damage = 250 //Dégâts de l'arme
        let name = "Épée de Liz"//Arme aléatoire
        
        super.init(name: name, weaponPoint: damage)//Retour des informartions à la classe arme
    }
    
}

class Magic : Weapon {
    
    init() {
        
        let damage = 250 //Dégâts de l'arme
        let name = "Magie"//Arme aléatoire
        
        super.init(name: name, weaponPoint: damage)//Retour des informartions à la classe arme
    }
    
}
