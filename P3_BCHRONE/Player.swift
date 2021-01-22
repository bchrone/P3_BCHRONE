//
//  Player.swift
//  P3_BCHRONE
//
//  Created by links on 08/01/2021.
//

import Foundation

class Player {
    
    var name : String
    var player: [Character]
    var game : Game
    
    init(name: String, game: Game) {
        self.name = name
        self.player = []
        self.game = game
        
    }
    
    func chooseCharacters(){
       
       
           
           print("Joueur 1 Sélectionné vos personnages !")
       
           while player.count != 3 {
               
               //print each sentence than you see in the variable
               if player.count == 0 {
                game.charactersLeft()
           print("Sélectionner un premier personnage")
               } else if player.count == 1 {
                game.charactersLeft()
           print("Sélectionner un deuxième personnage")
               } else {
                game.charactersLeft()
                   print("Sélectionner un troisième personnage")

               }
               
               //switch allowing to select a chartacter to attack
               if let choice = readLine(){//is used to read the input from the user.
                   switch choice {
                   case "1":
                    game.caracChoiceOne = game.allCharacter[0]//recovery in a var the value for the tab of playerOne
                    player.insert(game.caracChoiceOne, at: 0)//insert the value in playerOne
                    game.allCharacter.remove(at: game.nbr)//remove the value in allcharacter
                   case "2" :
                    game.nbr += 1
                    game.caracChoiceOne = game.allCharacter[1]
                    game.player.insert(game.caracChoiceOne, at: 0)
                    game.allCharacter.remove(at: game.nbr)
                   case "3":
                    game.nbr += 2
                    game.caracChoiceOne = game.allCharacter[2]
                    game.player.insert(game.caracChoiceOne, at: 0)
                    game.allCharacter.remove(at: game.nbr)
                   case "4" :
                    game.nbr += 3
                    game.caracChoiceOne = game.allCharacter[3]
                    game.player.insert(game.caracChoiceOne, at: 0)
                    game.allCharacter.remove(at: game.nbr)
                   case "5":
                    game.nbr += 4
                    game.caracChoiceOne = game.allCharacter[4]
                    game.player.insert(game.caracChoiceOne, at: 0)
                    game.allCharacter.remove(at: game.nbr)
                   case "6" :
                    game.nbr += 5
                    game.caracChoiceOne = game.allCharacter[5]
                    game.player.insert(game.caracChoiceOne, at: 0)
                    game.allCharacter.remove(at: game.nbr)
                   case "7":
                    game.nbr += 6
                    game.caracChoiceOne = game.allCharacter[6]
                    game.player.insert(game.caracChoiceOne, at: 0)
                    game.allCharacter.remove(at: game.nbr)
                   case "8" :
                    game.nbr += 7
                    game.caracChoiceOne = game.allCharacter[7]
                    game.player.insert(game.caracChoiceOne, at: 0)
                    game.allCharacter.remove(at: game.nbr)
                   default:
                       print("Mauvais choix")
                   }
                game.nbr = 0
                   print("Vos personnages sont :")
                game.whoIhave(player: player)
               }
           }
               
       }
   
    
    
}
