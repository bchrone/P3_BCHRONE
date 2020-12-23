//
//  Game.swift
//  P3_BCHRONE
//
//  Created by Bryan CHRONE on 23/12/2020.
//

import Foundation

class Player {

var playerOne : [Character] = []
var playerTwo : [Character] = []
var rWeapons : [Weapon] = []
var caracChoiceOne : Character = Meliodas()
var caracChoiceTwo : Character = Meliodas()
var phrase = "Sélectionner un personnage"
var phrase2 = "Sélectionner un deuxième personnage"
var nbr = 0
//mettre tous les personnages dans 1 tableau puis les soustraires
    
/*===================================================================================
 ====================================================================================
 ====================================================================================
 Fonction permettant à chaque joueur de choisir un personnage
 ====================================================================================
 ====================================================================================
 ===================================================================================*/
 func chooseCharacters(){
        
        print("Joueur 1 Sélectionné votre personnage !"
                + "\(Meliodas())"
                + "\(Elizabeth())"
            )
        
        while playerOne.count != 2 {
            
            if playerOne.count == 0 {
                print(phrase)
            } else {
                print(phrase2)
            }
            
            
            
            if let choice = readLine(){
                switch choice {
                case "1":
                    playerOne += [Meliodas()]
                case "2" :
                    playerOne += [Elizabeth()]
                default:
                    print("Try Again")
                }
                print("Vous avez \(playerOne)")
            }
        }
            
        print("Joueur 2 Sélectionné votre personnage !"
                + "\(Meliodas())"
                + "\(Elizabeth())"
            )
        
        while playerTwo.count != 2 {
            
            if playerTwo.count == 0 {
                print(phrase)
            } else {
                print(phrase2)
            }
            
            if let choice = readLine(){
                switch choice {
                case "1":
                    playerTwo += [Meliodas()]
                case "2" :
                    playerTwo += [Elizabeth()]
                default:
                    print("Try Again")
                }
                print("Vous avez \(playerTwo)")
            }
        }
        print("Combattez !")
    }
/*===================================================================================
====================================================================================
====================================================================================
Fonction permettant d'avoir un coffre aléatoirement dans la partie
====================================================================================
====================================================================================
===================================================================================*/
    func randomWeapons(){
        rWeapons += [Gun()]
        rWeapons += [Sword()]
        let randomIndex = Int(arc4random_uniform(UInt32(rWeapons.count)))
        let randomWeapon = rWeapons [randomIndex]
        let randomT = Int(arc4random_uniform(UInt32(30)))//tour aléatoire
        // faire avec modulo
        
        
        if randomT < 5  {
            print("Joueur 1 Vouz héritez d'une une nouvelle arme !")
            caracChoiceOne.weapon = randomWeapon
        }else if randomT > 25 {
            print("Joueur 2 Vouz héritez d'une une nouvelle arme !")
            caracChoiceOne.weapon = randomWeapon
        }
    }
/*===================================================================================
====================================================================================
====================================================================================
Fonction permettant de choisir le personnage que l'on doit attaquer
====================================================================================
====================================================================================
===================================================================================*/
    func one(){

        if let choice =  readLine(){

        
        switch choice {
        case "1":
            caracChoiceTwo = playerTwo[0]
            caracChoiceOne.attack(character: caracChoiceTwo)
        case "2":
            caracChoiceTwo = playerTwo[1]
            caracChoiceOne.attack(character: caracChoiceTwo)
        default:
            print("Mauvaise manipulation !")
        }
        
        }
        
    }
/*===================================================================================
====================================================================================
====================================================================================
    Fonction permettant d'avoir un coffre aléatoirement dans la partie
====================================================================================
====================================================================================
===================================================================================*/
    func win(){
        if caracChoiceOne.life <= 0 {
            print("En \(nbr) tours le joueur 2 à gagner")
            }else {
            print("En \(nbr) tours le joueur 1 à gagner")
        }
    
    for stat in playerOne {
        print(" le joueur \(stat.name) à fini avec\(stat.life)."
                + "\(stat.weapon.name)")
    }
    
    for stat in playerTwo {
        print(" le joueur \(stat.name) à fini avec\(stat.life) points de vie."
                + "\(stat.weapon.name)")
    }
    }
/*===================================================================================
====================================================================================
====================================================================================
    Fonction permettant d'avoir un coffre aléatoirement dans la partie
====================================================================================
====================================================================================
===================================================================================*/
    func letsPlay(){
        
 
    while caracChoiceOne.life >= 0 && caracChoiceTwo.life >= 0 {
        
    print("Joueur 1 avec qui voulez-vous attaquer ?")

    randomWeapons()
    if let choice =  readLine(){
     
        
    switch choice {
    case "1":
        caracChoiceOne = playerOne[0]
        print("Qui Voulez-Vous Attaquer ? \(playerTwo)")
        one()
    case "2":
        caracChoiceOne = playerOne[1]
        print("Qui Voulez-Vous Attaquer ? \(playerTwo)")
        one()
    default:
        print("Mauvaise manipulation !")
    }
}
     
    print("Joueur 2 avec qui voulez-vous attaquer ?")

        
    if let choice =  readLine(){
        
        
    switch choice {
    case "1":
        caracChoiceTwo = playerTwo[0]
        print("Qui Voulez-Vous Attaquer ?  \(playerOne)")
        one()
    case "2":
        caracChoiceTwo = playerTwo[1]
        print("Qui Voulez-Vous Attaquer ?  \(playerOne)")
        one()
    default:
        print("Mauvaise manipulation !")
    }

}
nbr += 1

}
win()

}


}
