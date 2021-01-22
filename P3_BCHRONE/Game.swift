    //
    //  Game.swift
    //  P3_BCHRONE
    //
    //  Created by Bryan CHRONE on 23/12/2020.
    //

    import Foundation

    class Game {

        var allCharacter : [Character]//all of the characters in a tab
        var playerOne : [Character]
        var playerTwo : [Character]
        var rWeapons : [Weapon]
        var characChoiceOne : Character
        var characChoiceTwo : Character
        var rounds : Int
        var nbr : Int

            init (allCharacter : [Character]) {
                self.allCharacter = allCharacter
                self.playerOne = []
                self.playerTwo = []
                self.rWeapons = [Sword(), Magic(), Dague()]
                self.characChoiceOne = Warlike(name: "Eli", life: 2000, type: "Guérisseur", weapon: Gideon())
                self.characChoiceTwo = Warlike(name: "Eli", life: 2000, type: "Guérisseur", weapon: Gideon())
                self.rounds = 0
                self.nbr = 0
            }
        
        // MARK: -  Function allowing to know the remaining characters.

         func charactersLeft(){
                        
                    for characters in allCharacter{
                        nbr += 1
                        print("Personnage \(nbr) : \(characters.name), Vie : \(characters.life), Arme : \(characters.weapon.name), dégâts : \(characters.weapon.weaponPoint), type : \(characters.type)")
                    }
            
         nbr = 0
         }
        // MARK: - Function allowing to know the name of each character of the player one.

             func whoIhaveOne(){
                    for characters in playerOne{
                    nbr += 1
                        print("\(nbr) : \(characters.name), vie : \(characters.life), type : \(characters.type)")
                }
        nbr = 0
     }
    // MARK: - Function allowing to know the name of each character of the player two.

                 func whoIhaveTwo(){
                        for characters in playerTwo{
                        nbr += 1
                        print("\(nbr) : \(characters.name), Vie : \(characters.life), type : \(characters.type)")
                    }
            nbr = 0
         }

     // MARK: - Function allowing each player to choose a character

     func chooseCharacters(){
        
            while playerOne.count != 3 {
            
                //print each sentence than you see in the variable
                if playerOne.count == 0 {
                    charactersLeft()
            print("Joueur 1 sélectionner un premier personnage")
                } else if playerOne.count == 1 {
                    charactersLeft()
            print("Joueur 1 sélectionner un deuxième personnage")
                } else {
                    charactersLeft()
                    print("Joueur 1 sélectionner un troisième personnage")

                }
                
                //switch allowing to select a chartacter to attack
                if let choice = readLine(){//is used to read the input from the user.
                    switch choice {
                    case "1":
                        characChoiceOne = allCharacter[0]//recovery in a var the value for the tab of playerOne
                        playerOne.insert(characChoiceOne, at: 0)//insert the value in playerOne
                        allCharacter.remove(at: nbr)//remove the value in allcharacter
                    case "2" :
                        nbr += 1
                        characChoiceOne = allCharacter[1]
                        playerOne.insert(characChoiceOne, at: 0)
                        allCharacter.remove(at: nbr)
                    case "3":
                        nbr += 2
                        characChoiceOne = allCharacter[2]
                        playerOne.insert(characChoiceOne, at: 0)
                        allCharacter.remove(at: nbr)
                    case "4" :
                        nbr += 3
                        characChoiceOne = allCharacter[3]
                        playerOne.insert(characChoiceOne, at: 0)
                        allCharacter.remove(at: nbr)
                    case "5":
                        nbr += 4
                        characChoiceOne = allCharacter[4]
                        playerOne.insert(characChoiceOne, at: 0)
                        allCharacter.remove(at: nbr)
                    case "6" :
                        nbr += 5
                        characChoiceOne = allCharacter[5]
                        playerOne.insert(characChoiceOne, at: 0)
                        allCharacter.remove(at: nbr)
                    case "7":
                        nbr += 6
                        characChoiceOne = allCharacter[6]
                        playerOne.insert(characChoiceOne, at: 0)
                        allCharacter.remove(at: nbr)
                    case "8" :
                        nbr += 7
                        characChoiceOne = allCharacter[7]
                        playerOne.insert(characChoiceOne, at: 0)
                        allCharacter.remove(at: nbr)
                    default:
                        print("Mauvais choix")
                    }
                    nbr = 0
                    print("Vos personnages sont :")
                    whoIhaveOne()
                }
            }
                
        
        while playerTwo.count != 3 {
            
            if playerTwo.count == 0 {
                charactersLeft()
                print("Joueur 2 sélectionner un premier personnage")
            } else if playerTwo.count == 1 {
                charactersLeft()
                print("Joueur 2 sélectionner un deuxième personnage")
            } else {
                charactersLeft()
                print("Joueur 2 sélectionner un troisième personnage")
            }
            
            if let choice = readLine(){
                switch choice {
                case "1":
                    characChoiceTwo = allCharacter[0]
                    playerTwo.insert(characChoiceTwo, at: 0)
                    allCharacter.remove(at: nbr)
                case "2" :
                    nbr += 1
                    characChoiceTwo = allCharacter[1]
                    playerTwo.insert(characChoiceTwo, at: 0)
                    allCharacter.remove(at: nbr)
                case "3":
                    nbr += 2
                    characChoiceTwo = allCharacter[2]
                    playerTwo.insert(characChoiceTwo, at: 0)
                    allCharacter.remove(at: nbr)
                case "4" :
                    nbr += 3
                    characChoiceTwo = allCharacter[3]
                    playerTwo.insert(characChoiceTwo, at: 0)
                    allCharacter.remove(at: nbr)
                case "5":
                    nbr += 4
                    characChoiceTwo = allCharacter[4]
                    playerTwo.insert(characChoiceTwo, at: 0)
                    allCharacter.remove(at: nbr)
                case "6" :
                    nbr += 5
                    characChoiceTwo = allCharacter[5]
                    playerTwo.insert(characChoiceTwo, at: 0)
                    allCharacter.remove(at: nbr)
                case "7":
                    nbr += 6
                    characChoiceTwo = allCharacter[6]
                    playerTwo.insert(characChoiceTwo, at: 0)
                    allCharacter.remove(at: nbr)
                case "8" :
                    nbr += 7
                    characChoiceTwo = allCharacter[7]
                    playerTwo.insert(characChoiceTwo, at: 0)
                    allCharacter.remove(at: nbr)
                default:
                    print("Mauvais choix !")
                }
                nbr = 0
                print("Vos personnages sont :")
                whoIhaveTwo()
                
            }
        }
            print("Combattez !")
        }
    
    //MARK: - Function allowing to have a random chest in the a party
        func randomWeapons(){
            //rWeapons += [Sword()]
            let randomIndex = Int(arc4random_uniform(UInt32(rWeapons.count)))
            let randomWeapon = rWeapons [randomIndex]
            let randomT = Int(arc4random_uniform(UInt32(30)))//tour aléatoire
            
            if randomT <= 5 && randomT >= 2 {
                print("Joueur 1 vous avez trouvé un coffre ! L'arme de votre personnage \(characChoiceOne.name), \(characChoiceOne.weapon.name)  de \(characChoiceOne.weapon.weaponPoint) de dégâts sera remplacée!")
                characChoiceOne.weapon = randomWeapon
                print("Félicitation vous héritez d'une une nouvelle arme qui est \(characChoiceOne.weapon.name) avec \(characChoiceOne.weapon.weaponPoint) de dégâts!")
            }else if randomT >= 25 && randomT <= 28 {
                print("Joueur 2 vous avez trouvé un coffre ! L'arme de votre personnage \(characChoiceTwo.name),\(characChoiceTwo.weapon.name)  de \(characChoiceTwo.weapon.weaponPoint) de dégâts sera remplacée!")
                characChoiceTwo.weapon = randomWeapon
                print("Félicitation vous héritez d'une une nouvelle arme qui est \(characChoiceTwo.weapon.name) avec \(characChoiceOne.weapon.weaponPoint) de dégâts!")
            }
        }

       
    //MARK: - Function allows the player one to choose a character to heal
       
        func attackOrHealOne() {
            
            var index = 0
        
            
                if characChoiceOne.type == "Guérisseur" {
                    
                    print ("Voulez-vous 1 : attaquer ou 2 : soigner ?")
                
                if let choice =  readLine(){
                    
                    switch choice {
                    case "1":
                        whoIhaveTwo()
                        let sentence = "Joueur 1 utilise avec \(characChoiceOne.name) et l'arme \(characChoiceOne.weapon.name)"
                        print("Qui voulez-vous attaquer ?")
                        
                        if let choice =  readLine(){

                        switch choice {
                        case "1":
                            print(sentence)
                            characChoiceTwo = playerTwo[0]
                            characChoiceOne.attack(character: characChoiceTwo)
                            index = 0
                        case "2":
                            print(sentence)
                            characChoiceTwo = playerTwo[1]
                            characChoiceOne.attack(character: characChoiceTwo)
                            index = 1
                        case "3":
                            print(sentence)
                            characChoiceTwo = playerTwo[2]
                            characChoiceOne.attack(character: characChoiceTwo)
                            index = 2
                        default:
                            print("Mauvaise manipulation !")
        }
        }
                        
                    case "2":
                        let sentence = "Joueur 1 soigne avec \(characChoiceOne.name) "
                        whoIhaveOne()
                        print("Sélectionner le joueur à soigner")
                        
                        if let choice =  readLine(){

                        switch choice {
                        case "1":
                            print(sentence)
                            characChoiceOne = playerOne[0]
                            characChoiceOne.healing(character: characChoiceOne)
                        case "2":
                            print(sentence)
                            characChoiceOne = playerOne[1]
                            characChoiceOne.healing(character: characChoiceOne)
                        case "3":
                            print(sentence)
                            characChoiceOne = playerOne[2]
                            characChoiceOne.healing(character: characChoiceOne)
                        default:
                            print("Mauvaise manipulation !")
                        
        }
        }
                    default:
                        print("Mauvaise manipulation !")
        }
        }
                    if characChoiceTwo.life <= 0 && playerTwo.count == 3{
                        playerTwo.remove(at: index)
                        print("\(characChoiceTwo.name) est mort(e) !")
                    }else if characChoiceTwo.life <= 0 && (playerTwo.count == 2 || playerTwo.count == 1) {
                        playerTwo.remove(at: index-1)
                        print("\(characChoiceTwo.name) est mort(e) !")
                    }
        }
                 else {
                    whoIhaveTwo()
                    let sentence = "Joueur 1 utilise avec \(characChoiceOne.name) et l'arme \(characChoiceOne.weapon.name)"
                    print("Qui voulez-vous attaquer ?")

                    if let choice =  readLine(){
                                            
                    switch choice {
                    case "1":
                        print(sentence)
                        characChoiceTwo = playerTwo[0]
                        characChoiceOne.attack(character: characChoiceTwo)
                        index = 0
                    case "2":
                        print(sentence)
                        characChoiceTwo = playerTwo[1]
                        characChoiceOne.attack(character: characChoiceTwo)
                        index = 1
                    case "3":
                        print(sentence)
                        characChoiceTwo = playerTwo[2]
                        characChoiceOne.attack(character: characChoiceTwo)
                        index = 2
                    default:
                        print("Mauvaise manipulation !")
                    }
                    }
                    if characChoiceTwo.life <= 0 {
                        playerTwo.remove(at: index)
                        print("\(characChoiceTwo.name) est mort(e) !")
                    }else if characChoiceTwo.life <= 0 && (playerTwo.count == 2 || playerTwo.count == 1) {
                        playerTwo.remove(at: index-1)
                        print("\(characChoiceTwo.name) est mort(e) !")
                    }
            }
        }
                
                    
            
            
        
        
        //MARK: - Function allows the player two to choose a character to heal
        func attackOrHealTwo() {
        
            var index = 0
            
            if characChoiceTwo.type == "Guérisseur" {
                
                print ("Voulez-vous 1 : attaquer ou 2 : soigner ?")
            
            if let choice =  readLine(){
                
                switch choice {
                case "1":
                    whoIhaveOne()
                    let sentence = "Joueur 2 utilise avec \(characChoiceTwo.name) et l'arme \(characChoiceTwo.weapon.name)"
                    print("Qui voulez-vous attaquer ?")

                    if let choice =  readLine(){
                                            
                    switch choice {
                    case "1":
                        print(sentence)
                        characChoiceOne = playerOne[0]
                        characChoiceTwo.attack(character: characChoiceOne)
                        index = 0
                    case "2":
                        print(sentence)
                        characChoiceOne = playerOne[1]
                        characChoiceTwo.attack(character: characChoiceOne)
                        index = 1
                    case "3":
                        print(sentence)
                        characChoiceOne = playerOne[2]
                        characChoiceTwo.attack(character: characChoiceOne)
                        index = 2
                    default:
                        print("Mauvaise manipulation !")
                    }
                    
                    }
                case "2":
                    let sentence = "Joueur 2 soigne avec \(characChoiceTwo.name) "
                    whoIhaveTwo()
                    print("Sélectionner le joueur à soigner")
                    if let choice =  readLine(){

                    switch choice {
                    case "1":
                        print(sentence)
                        characChoiceTwo = playerTwo[0]
                        characChoiceTwo.healing(character: characChoiceTwo)
                    case "2":
                        print(sentence)
                        characChoiceTwo = playerTwo[1]
                        characChoiceTwo.healing(character: characChoiceTwo)
                    case "3":
                        print(sentence)
                        characChoiceTwo = playerTwo[2]
                        characChoiceTwo.healing(character: characChoiceTwo)
                    default:
                        print("Mauvaise manipulation !")
                    }
                    
                    }
                default:
                    print("Mauvaise manipulation !")
                }
            
        }
                if characChoiceOne.life <= 0 {
                    playerOne.remove(at: index)
                    print("\(characChoiceOne.name) est mort(e) !")
                }else if characChoiceOne.life <= 0 && (playerOne.count == 2 || playerOne.count == 1) {
                    playerOne.remove(at: index-1)
                    print("\(characChoiceOne.name) est mort(e) !")
                }
            } else {
                let sentence = "Joueur 2 utilise \(characChoiceTwo.name) et l'arme \(characChoiceTwo.weapon.name)"
                whoIhaveOne()
                print("Qui voulez-vous attaquer ?")
                if let choice =  readLine(){

                
                switch choice {
                case "1":
                    print(sentence)
                    characChoiceOne = playerOne[0]
                    characChoiceTwo.attack(character: characChoiceOne)
                    index = 0
                case "2":
                    print(sentence)
                    characChoiceOne = playerOne[1]
                    characChoiceTwo.attack(character: characChoiceOne)
                    index = 1
                case "3":
                    print(sentence)
                    characChoiceOne = playerOne[2]
                    characChoiceTwo.attack(character: characChoiceOne)
                    index = 2
                default:
                    print("Mauvaise manipulation !")
                }
                
                }
                if characChoiceOne.life <= 0 {
                    playerOne.remove(at: index)
                    print("\(characChoiceOne.name) est mort(e) !")
                }else if characChoiceOne.life <= 0 && (playerOne.count == 2 || playerOne.count == 1) {
                    playerOne.remove(at: index-1)
                    print("\(characChoiceOne.name) est mort(e) !")
                }            }
            
        }

         //MARK: -  Function allows to know who is the winner and print the stats of the game

        func win(){
            if characChoiceOne.life <= 0 {
                print("En \(rounds) tours le joueur 2 à gagner")
                }else {
                print("En \(rounds) tours le joueur 1 à gagner")
            }
        
        for stat in playerOne {
            print(" Le personnage du joueur 1 \(stat.name) à fini avec \(stat.life) points de vie")
        }
        
        for stat in playerTwo {
            print(" Le personnage du joueur 2 \(stat.name) à fini avec \(stat.life) points de vie.")
        }
        }

         //MARK: -   Function allows to launch the game

        func letsPlay(){
            
            
            while playerOne.count != 0 && playerTwo.count != 0{
                 
            //}
            
            //while caracChoiceOne.life > 0 && caracChoiceTwo.life > 0 {
            
        whoIhaveOne()
        print("Joueur 1 avec qui voulez-vous jouer ?")
        if let choice =  readLine(){
            
        switch choice {
        case "1":
            characChoiceOne = playerOne[0]
            attackOrHealOne()
        case "2":
            characChoiceOne = playerOne[1]
            attackOrHealOne()
        case "3":
            characChoiceOne = playerOne[2]
            attackOrHealOne()
        default:
            print("Mauvaise manipulation !")
        }
    }


                
         
        whoIhaveTwo()
        print("Joueur 2 avec qui voulez-vous jouer ?")

            
        if let choice =  readLine(){
            
            
        switch choice {
        case "1":
            characChoiceTwo = playerTwo[0]
            attackOrHealTwo()
        case "2":
            characChoiceTwo = playerTwo[1]
            attackOrHealTwo()
        case "3":
            characChoiceTwo = playerTwo[2]
            attackOrHealTwo()
        default:
            print("Mauvaise manipulation !")
        }

    }
    rounds += 1
    randomWeapons()


    }
    win()

    }


    
    }
    
