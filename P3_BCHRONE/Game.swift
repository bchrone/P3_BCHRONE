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
var phrase = "Sélectionner un premier personnage"
var phrase2 = "Sélectionner un deuxième personnage"
var phrase3 = "Sélectionner un troisième personnage"

var nbr = 0
/*===================================================================================
====================================================================================
====================================================================================
            Fonction permettant de connaitre les personnage restant
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
            Fonction permettant de connaitre les personnage du joueur 1
====================================================================================
====================================================================================
===================================================================================*/
         func whoIhaveOne(){
                for characters in playerOne{
                nbr += 1
                print("\(nbr) : \(characters.name), Vie : \(characters.life), Arme : \(characters.weapon.name), dégâts : \(characters.weapon.weaponPoint)")
            }
    nbr = 0
 }
/*===================================================================================
====================================================================================
====================================================================================
            Fonction permettant de connaitre les personnage du joueur 2
====================================================================================
====================================================================================
===================================================================================*/
             func whoIhaveTwo(){
                    for characters in playerTwo{
                    nbr += 1
                    print("\(nbr) : \(characters.name), Vie : \(characters.life), Arme : \(characters.weapon.name), dégâts : \(characters.weapon.weaponPoint)")
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
        
        print("Joueur 1 Sélectionné vos personnages !")
    
        while playerOne.count != 3 {
            
            if playerOne.count == 0 {
                print(phrase)
                charactersLeft()
            } else if playerOne.count == 1 {
                print(phrase2)
                charactersLeft()
            } else {
                print(phrase3)
                charactersLeft()
            }
            
            if let choice = readLine(){
                switch choice {
                case "1":
                    //récupérer dans caracchoiceone
                    caracChoiceOne = allCharacter[0]
                    playerOne.insert(caracChoiceOne, at: 0)
                    allCharacter.remove(at: nbr)
                case "2" :
                    nbr += 1
                    caracChoiceOne = allCharacter[1]
                    playerOne.insert(caracChoiceOne, at: 0)
                    allCharacter.remove(at: nbr)
                case "3":
                    nbr += 2
                    caracChoiceOne = allCharacter[2]
                    playerOne.insert(caracChoiceOne, at: 0)
                    allCharacter.remove(at: nbr)
                case "4" :
                    nbr += 3
                    caracChoiceOne = allCharacter[3]
                    playerOne.insert(caracChoiceOne, at: 0)
                    allCharacter.remove(at: nbr)
                case "5":
                    nbr += 4
                    caracChoiceOne = allCharacter[4]
                    playerOne.insert(caracChoiceOne, at: 0)
                    allCharacter.remove(at: nbr)
                case "6" :
                    nbr += 5
                    caracChoiceOne = allCharacter[5]
                    playerOne.insert(caracChoiceOne, at: 0)
                    allCharacter.remove(at: nbr)
                case "7":
                    nbr += 6
                    caracChoiceOne = allCharacter[6]
                    playerOne.insert(caracChoiceOne, at: 0)
                    allCharacter.remove(at: nbr)
                case "8" :
                    nbr += 7
                    caracChoiceOne = allCharacter[7]
                    playerOne.insert(caracChoiceOne, at: 0)
                    allCharacter.remove(at: nbr)
                default:
                    print("Try Again")
                }
                nbr = 0
                print("Vos personnages sont :")
                whoIhaveOne()
                
                
            }
        }
            
        print("Joueur 2 Sélectionné votre personnage !")

    
    while playerTwo.count != 3 {
        
        if playerTwo.count == 0 {
            print(phrase)
            charactersLeft()
        } else if playerTwo.count == 1 {
            print(phrase2)
            charactersLeft()
        } else {
            print(phrase3)
            charactersLeft()
        }
        
        if let choice = readLine(){
            switch choice {
            case "1":
                //récupérer dans caracchoiceone
                caracChoiceTwo = allCharacter[0]
                playerTwo.insert(caracChoiceTwo, at: 0)
                allCharacter.remove(at: nbr)
            case "2" :
                nbr += 1
                caracChoiceTwo = allCharacter[1]
                playerTwo.insert(caracChoiceTwo, at: 0)
                allCharacter.remove(at: nbr)
            case "3":
                nbr += 2
                caracChoiceTwo = allCharacter[2]
                playerTwo.insert(caracChoiceTwo, at: 0)
                allCharacter.remove(at: nbr)
            case "4" :
                nbr += 3
                caracChoiceTwo = allCharacter[3]
                playerTwo.insert(caracChoiceTwo, at: 0)
                allCharacter.remove(at: nbr)
            case "5":
                nbr += 4
                caracChoiceTwo = allCharacter[4]
                playerTwo.insert(caracChoiceTwo, at: 0)
                allCharacter.remove(at: nbr)
            case "6" :
                nbr += 5
                caracChoiceTwo = allCharacter[5]
                playerTwo.insert(caracChoiceTwo, at: 0)
                allCharacter.remove(at: nbr)
            case "7":
                nbr += 6
                caracChoiceTwo = allCharacter[6]
                playerTwo.insert(caracChoiceTwo, at: 0)
                allCharacter.remove(at: nbr)
            case "8" :
                nbr += 7
                caracChoiceTwo = allCharacter[7]
                playerTwo.insert(caracChoiceTwo, at: 0)
                allCharacter.remove(at: nbr)
            default:
                print("Try Again")
            }
            nbr = 0
            print("Vos personnages sont :")
            whoIhaveTwo()
            
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
        
        
        if randomT < 5 && randomT > 2 && nbr > 5{
            caracChoiceOne.weapon = randomWeapon
            print("Joueur 1 Vouz héritez d'une une nouvelle arme qui est \(caracChoiceOne.weapon.name)!")
        }else if randomT > 25 && randomT < 28 && nbr > 5 {
            caracChoiceOne.weapon = randomWeapon
            print("Joueur 2 Vouz héritez d'une une nouvelle arme \(caracChoiceTwo.weapon.name)!")
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
        whoIhaveTwo()
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
        case "3":
            print(phrase)
            caracChoiceTwo = playerTwo[2]
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
            whoIhaveOne()
            let phrase = "Joueur 2 attaque avec \(caracChoiceTwo.name) et l'arme \(caracChoiceTwo.weapon.name)"

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
            case "3":
                print(phrase)
                caracChoiceOne = playerOne[2]
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
        print(" Le personnage du joueur 1 \(stat.name) à fini avec \(stat.life) points de vie")
    }
    
    for stat in playerTwo {
        print(" Le personnage du joueur 2 \(stat.name) à fini avec \(stat.life) points de vie.")
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
    whoIhaveOne()

    randomWeapons()
    if let choice =  readLine(){
     
        
    switch choice {
    case "1":
        caracChoiceOne = playerOne[0]
        print("Qui Voulez-Vous Attaquer ?")
        one()
    case "2":
        caracChoiceOne = playerOne[1]
        print("Qui Voulez-Vous Attaquer ?")
        one()
    case "3":
        caracChoiceOne = playerOne[2]
        print("Qui Voulez-Vous Attaquer ?  ")
        one()
    default:
        print("Mauvaise manipulation !")
    }
}
     
    print("Joueur 2 avec qui voulez-vous attaquer ?")
    whoIhaveTwo()

        
    if let choice =  readLine(){
        
        
    switch choice {
    case "1":
        caracChoiceTwo = playerTwo[0]
        print("Qui Voulez-Vous Attaquer ? ")
        two()
    case "2":
        caracChoiceTwo = playerTwo[1]
        print("Qui Voulez-Vous Attaquer ?  ")
        two()
    case "3":
        caracChoiceTwo = playerTwo[2]
        print("Qui Voulez-Vous Attaquer ?  ")
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
