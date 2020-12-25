//
//  Weapon.swift
//  P3_BCHRONE
//
//  Created by Bryan CHRONE on 23/12/2020.
//

import Foundation

class Weapon {
    var name : String//name of the weapon
    var weaponPoint : Int//damage of the weapon
    
    //var init
    init(name: String,  weaponPoint: Int) {
        self.name = name
        self.weaponPoint = weaponPoint
    }

}

//Weapon of Meliodas
class SwordOfMeliodas : Weapon {
    
    init() {
        
        let damage = 450 //damage of the weapon
        let name = "Épée du Dragon" //name of the weapon
        
        super.init(name: name, weaponPoint: damage)//info damage and name return to mother class
    }
    
}

//Weapon of King
class Spear : Weapon {
    
    
    init(){
        let damage = 300
        let name = "Lance Spirituelle Chastiefol"
        
        
        super.init(name: name, weaponPoint: damage)
    }
    
}

//Weapon of Diane
class Gideon : Weapon {
    
    
    init(){
        let damage = 390
        let name = "Gideon"
        
        
        super.init(name: name, weaponPoint: damage)
    }
    
}

//Weapon of Gowther
class Herritt : Weapon {
    
    
    init(){
        let damage = 365
        let name = "Double Arc Herritt"
        
        
        super.init(name: name, weaponPoint: damage)
    }
    
}

//Weapon of Merlin
class Aldan : Weapon {
    
    
    init(){
        let damage = 400
        let name = "Étoile du Matin Aldan"
        
        
        super.init(name: name, weaponPoint: damage)
    }
    
}

//Weapon of Escanor
class Lostvayne : Weapon {
    
    
    init(){
        let damage = 600
        let name = "Lostvayne"
        
        
        super.init(name: name, weaponPoint: damage)
    }
    
}

//random weapon
class Dague : Weapon {
    
    
    init(){
        let damage = 45
        let name = "Dague de Cenette"
        
        
        super.init(name: name, weaponPoint: damage)
    }
    
}


//random weapon
class Sword : Weapon {
    
    init() {
        
        let damage = 250
        let name = "Épée de Liz"
        
        super.init(name: name, weaponPoint: damage)
    }
    
}

//random weapon
class Magic : Weapon {
    
    init() {
        
        let damage = 250
        let name = "Magie"
        
        super.init(name: name, weaponPoint: damage)
    }
    
}
