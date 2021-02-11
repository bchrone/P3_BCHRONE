//
//  Player.swift
//  P3_BCHRONE
//
//  Created by links on 27/01/2021.
//

import Foundation

class Player {
    var name : String
    var nameOfPlayer : String
    var listOfCharacters : [Character]
    //var characChoice : Character
   // var choiceOfthePlayer : Bool
    //var playerOne : Player
    //var playerTwo : Player

    
    
    init(nameOfPlayer: String) {

        self.nameOfPlayer = nameOfPlayer
        self.name = ""
        self.listOfCharacters = []
        //self.characChoice = Warlike(name: "yo", life: 500, type: "guerrier", weapon: Sword())
        //self.choiceOfthePlayer = false
        //self.playerOne = Player(nameOfPlayer: "Joueur 1")
        //self.playerTwo = Player(nameOfPlayer: "Joueur 2")

    }
    

    // MARK: - Function allowing to know the name of each character of the player one.

    func whoIhave(){
        
        var nbr = 0
        
        for characters in listOfCharacters{
            
            if characters.type == "Guerrier" {
                nbr += 1
                print("\(nbr) : \(characters.name) avec \(characters.life) points de vie, l'arme \(characters.weapon.name) qui provoque \(characters.weapon.weaponPoint) de dégâts et de type \(characters.type).")
            }else {
                nbr += 1
                print("\(nbr) : \(characters.name) avec \(characters.life) points de vie, l'arme \(characters.weapon.name) qui provoque \(characters.weapon.weaponPoint) de dégâts et de type \(characters.type). Il peut donc soigné !")
            }
           
            }
                    
        nbr = 0

 }
    
    
}
