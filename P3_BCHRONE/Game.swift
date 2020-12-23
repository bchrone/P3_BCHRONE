//
//  Game.swift
//  P3_BCHRONE
//
//  Created by Bryan CHRONE on 23/12/2020.
//

import Foundation

class Player {

var allCharacter = [Ban(),Merlin(),Meliodas(),Elizabeth(),Diane(),King(),Gowther(),Escanor()]
var playerOne : [Character] = []
var playerTwo : [Character] = []
var rWeapons : [Weapon] = []
var caracChoiceOne : Character = Meliodas()
var caracChoiceTwo : Character = Meliodas()
var phrase = "Sélectionner un personnage"
var phrase2 = "Sélectionner un deuxième personnage"
var phrase3 = "Sélectionner un troisième personnage"

var nbr = 0
/*===================================================================================
====================================================================================
====================================================================================
            Fonction permettant à chaque joueur de choisir un personnage
====================================================================================
====================================================================================
===================================================================================*/
     func charactersLeft(){
                    
                for characters in allCharacter{
                    nbr += 1
                    print("Personnage \(nbr) : \(characters.name), Vie : \(characters.life), Arme : \(characters.weapon.name), dégâts : \(characters.weapon.weaponPoint)")
                }
        nbr = 0
     }
    
    
/*===================================================================================
 ====================================================================================
 ====================================================================================
            Fonction permettant à chaque joueur de choisir un personnage
 ====================================================================================
 ====================================================================================
 ===================================================================================*/
 func chooseCharacters(){
        
        print("Joueur 1 Sélectionné votre personnage !   ")

        charactersLeft()
    
        while playerOne.count != 3 {
            
            if playerOne.count == 0 {
                print(phrase)
            } else if playerOne.count == 1 {
                print(phrase2)
            } else {
                print(phrase3)
            }
            
            if let choice = readLine(){
                switch choice {
                case "1":
                    playerOne += [Ban()]
                    allCharacter.remove(at: nbr)
                case "2" :
                    nbr += 1
                    playerOne += [Merlin()]
                    allCharacter.remove(at: nbr)
                case "3":
                    nbr += 2
                    playerOne += [Meliodas()]
                    allCharacter.remove(at: nbr)
                case "4" :
                    nbr += 3
                    playerOne += [Elizabeth()]
                    allCharacter.remove(at: nbr)
                case "5":
                    nbr += 4
                    playerOne += [Diane()]
                    allCharacter.remove(at: nbr)
                case "6" :
                    nbr += 5
                    playerOne += [King()]
                    allCharacter.remove(at: nbr)
                case "7":
                    nbr += 6
                    playerOne += [Gowther()]
                    allCharacter.remove(at: nbr)
                case "8" :
                    nbr += 7
                    playerOne += [Escanor()]
                    allCharacter.remove(at: nbr)
                default:
                    print("Try Again")
                }
                nbr = 0
                print("Vous avez \(playerOne)")
                charactersLeft()
                
            }
        }
            
        print("Joueur 2 Sélectionné votre personnage !")
    
    for characters in allCharacter{
        nbr += 1
        print("Personnage \(nbr) : \(characters.name), Vie : \(characters.life), Arme : \(characters.weapon.name), dégâts : \(characters.weapon.weaponPoint)")
    }
    
    nbr = 0
    
    
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
        //rWeapons += [()]
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
    Fonction permettant de choisir le personnage que le joueur 1 doit attaquer
====================================================================================
====================================================================================
===================================================================================*/
    func one(){
        
        let phrase = "Joueur 1 attaque avec \(caracChoiceOne.name) et l'arme \(caracChoiceOne.weapon.name)"

        if let choice =  readLine(){

        
        switch choice {
        case "1":
            print(phrase)
            caracChoiceTwo = playerTwo[0]
            caracChoiceOne.attack(character: caracChoiceTwo)
        case "2":
            print(phrase)
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
    Fonction permettant de choisir le personnage que le joueur 2 doit attaquer
====================================================================================
====================================================================================
===================================================================================*/
        func two(){
            
            let phrase = "Joueur 2 attaque avec \(caracChoiceOne.name) et l'arme \(caracChoiceOne.weapon.name)"

            if let choice =  readLine(){

            
            switch choice {
            case "1":
                print(phrase)
                caracChoiceOne = playerOne[0]
                caracChoiceTwo.attack(character: caracChoiceOne)
            case "2":
                print(phrase)
                caracChoiceOne = playerOne[1]
                caracChoiceTwo.attack(character: caracChoiceOne)
            default:
                print("Mauvaise manipulation !")
            }
            
            }
            
        }
/*===================================================================================
====================================================================================
====================================================================================
        Fonction permettant de savoir qui remporte la partie et les stats
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
                    Fonction permettant de lancer jeu
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
        two()
    case "2":
        caracChoiceTwo = playerTwo[1]
        print("Qui Voulez-Vous Attaquer ?  \(playerOne)")
        two()
    default:
        print("Mauvaise manipulation !")
    }

}
nbr += 1

}
win()

}


}
