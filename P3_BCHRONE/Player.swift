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
    var characChoice : Character

    
    
    init(nameOfPlayer: String) {

        self.nameOfPlayer = nameOfPlayer
        self.name = ""
        self.listOfCharacters = []
        self.characChoice = Warlike(name: "yo", life: 500, type: "guerrier", weapon: Sword())
    }
    
    // MARK: -  Function allowing to know the remaining characters.

    func sameCharac(){
        
        name = readLine()!
        
        if listOfCharacters.count >= 1 && listOfCharacters.count <= 2 {
            for nameOfChar in listOfCharacters {
                while nameOfChar.name == name {
                    print("\nVous ne pouvez pas utilisez deux fois le même joueur ! Recommencez !")
                    print("\n\nEntrez le nom de votre personnage")
                    name = readLine()!
                    
                }
            }
        }

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
    
    
    // MARK: - Function allowing each player to choose a character

       func chooseCharacters(){
       
       print("Bienvenue dans le prototype du jeu de l'entreprise FrenchGame Factory ! \n\n")
       
           while listOfCharacters.count != 3 {
               
               
               //print each sentence than you see in the variable
               if listOfCharacters.count == 0 {
                   
                   print("\n\(nameOfPlayer) quel type de personnage voulez-vous ? \n1 : Guerrier \n2 : Guérisseur \n ")
                   
           print("Sélectionner un ou deux à l'aide de votre clavier numérique.")
                   
               } else if listOfCharacters.count == 1 {
                   
           print("\n\(nameOfPlayer) choisissez le type de votre deuxième personnage \n1 : Guerrier \n2 : Guérisseur \n  ")
                   
               } else {
                   
           print("\n\(nameOfPlayer) choisissez le type de votre troisième personnage \n1 : Guerrier \n2 : Guérisseur \n ")

               }
               
               //switch allowing to select a chartacter to attack
               if let choice = readLine(){//is used to read the input from the user.
                   switch choice {
                   case "1":
                       print("\nEntrez le nom de votre guerrier :")
                       //let name = readLine()
                       sameCharac()
                       characChoice = Warlike(name: name, life: 500, type: "Guérrier", weapon: Sword())//recovery in a var the value for the tab of playerOne
                       listOfCharacters.insert(characChoice, at: 0)//insert the value in playerOne
                   case "2" :
                       print("\nEntrez le nom de votre guérisseur :")
                       sameCharac()
                       characChoice = Healer(name: name, life: 500, type: "Guérisseur", weapon: SwordOfMeliodas())//recovery in a var the value for the tab of playerOne
                       listOfCharacters.insert(characChoice, at: 0)
                   default:
                       print("\nMauvais choix")
                   }
                   if listOfCharacters.count == 1 {
                       print("\nVotre Premier personnage est : ")
                       whoIhave()
                   }else if listOfCharacters.count > 1 {
                    print("\n\(nameOfPlayer) vos personnages sont : ")
                       whoIhave()
                   }
                   
               }
           }
       }
}
