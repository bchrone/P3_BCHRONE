    //
    //  Game.swift
    //  P3_BCHRONE
    //
    //  Created by Bryan CHRONE on 23/12/2020.
    //

    import Foundation

    class Game {

        var name : String
        var rWeapons : [Weapon]
        var characChoiceForAction : Character
        var characChoiceForSubire : Character
        var rounds : Int
        var nbr : Int
        var choiceOfThePlayer : Bool
        //let player : Player
        let playerOne : Player
        let playerTwo : Player

            init () {
                self.name = ""
                //self.player = Player(nameOfPlayer: "No name")
                self.playerOne = Player(nameOfPlayer: "Joueur 1")
                self.playerTwo = Player(nameOfPlayer: "Joueur 2")
                self.rWeapons = [Sword(), Magic(), Dague()]
                self.characChoiceForAction = Warlike(name: "Eli", life: 2000, type: "Guérisseur", weapon: Gideon())
                self.characChoiceForSubire = Warlike(name: "Eli", life: 2000, type: "Guérisseur", weapon: Gideon())
                self.rounds = 0
                self.nbr = 0
                self.choiceOfThePlayer = false
            }
            
        // MARK: -  Function allowing to know the remaining characters.

        func sameCharac(of player : Player){
            
            if player.nameOfPlayer == "Joueur 1" {
                
                if player.listOfCharacters.count < 1 {
                    
                    name = readLine()!

                }else{
                    
                    //while choiceOfthePlayer == false {
                                        
                    if player.listOfCharacters.count == 1 || player.listOfCharacters.count == 2 {
                            
                            name = readLine()!
                            
                        for nameOfChar in player.listOfCharacters {
                                
                                while nameOfChar.name == name && choiceOfThePlayer == false {
                                    
                                    choiceOfThePlayer = false
                                    
                                    print("\nVous ne pouvez pas utilisez deux fois le même joueur ! Recommencez !")
                                    print("\n\nEntrez le nom de votre personnage")
                                    
                                    name = readLine()!
                                    
                                    if nameOfChar.name != name {
                                        choiceOfThePlayer = true
                                    }
                                    
                                    }
                                
                            choiceOfThePlayer = false
                            }
                        }
                        
                    }
                
                
            }else{
                
                if player.listOfCharacters.count < 1 {
                    name = readLine()!
                    
                    for nameOfChar in playerOne.listOfCharacters {
                            
                            while nameOfChar.name == name && choiceOfThePlayer  == false {
                                
                                choiceOfThePlayer  = false
                                
                                print("\nVous ne pouvez pas utilisez le même joueur que le joueur 1 ! Recommencez !")
                                print("\n\nEntrez le nom de votre personnage")
                                
                                name = readLine()!
                                
                                if nameOfChar.name != name {
                                    choiceOfThePlayer  = true
                                }
                                
                                }
                            
                        choiceOfThePlayer  = false
                        }

                }else{
                    
                    //while choiceOfthePlayer == false {
                                        
                    if player.listOfCharacters.count == 1 || player.listOfCharacters.count == 2 {
                            
                            name = readLine()!
                            
                        for nameOfChar in player.listOfCharacters {
                                
                                while nameOfChar.name == name && choiceOfThePlayer == false {
                                    
                                    choiceOfThePlayer  = false
                                    
                                    print("\nVous ne pouvez pas utilisez deux fois le même joueur ! Recommencez !")
                                    print("\n\nEntrez le nom de votre personnage")
                                    
                                    name = readLine()!
                                    
                                    if nameOfChar.name != name {
                                        choiceOfThePlayer  = true
                                    }
                                    
                                    }
                                
                            choiceOfThePlayer  = false
                            }
                        
                        for nameOfChar in playerOne.listOfCharacters {
                                
                                while nameOfChar.name == name && choiceOfThePlayer  == false {
                                    
                                    choiceOfThePlayer  = false
                                    
                                    print("\nVous ne pouvez pas utilisez le même joueur que le joueur 1 ! Recommencez !")
                                    print("\n\nEntrez le nom de votre personnage")
                                    
                                    name = readLine()!
                                    
                                    if nameOfChar.name != name {
                                        choiceOfThePlayer  = true
                                    }
                                    
                                    }
                                
                            choiceOfThePlayer  = false
                            }
                        }
                        
                    }
                
            }

         }
        // MARK: - Function allowing each player to choose a character

        func chooseCharacters(of player : Player){
           
           print("Bienvenue dans le prototype du jeu de l'entreprise FrenchGame Factory ! \n\n")
           
            while player.listOfCharacters.count != 3 {
                   
                   
                   //print each sentence than you see in the variable
                if player.listOfCharacters.count == 0 {
                       
                    print("\n\(player.nameOfPlayer) quel type de personnage voulez-vous ? \n1 : Guerrier \n2 : Guérisseur \n ")
                       
               print("Sélectionner un ou deux à l'aide de votre clavier numérique.")
                       
                } else if player.listOfCharacters.count == 1 {
                       
                    print("\n\(player.nameOfPlayer) choisissez le type de votre deuxième personnage \n1 : Guerrier \n2 : Guérisseur \n  ")
                       
                   } else {
                       
                    print("\n\(player.nameOfPlayer) choisissez le type de votre troisième personnage \n1 : Guerrier \n2 : Guérisseur \n ")

                   }
                   
                   //switch allowing to select a chartacter to attack
                   if let choice = readLine(){//is used to read the input from the user.
                       switch choice {
                       case "1":
                           print("\nEntrez le nom de votre guerrier :")
                           //let name = readLine()
                        sameCharac(of: player)
                           characChoiceForAction = Warlike(name: name, life: 500, type: "Guérrier", weapon: Sword())//recovery in a var the value for the tab of playerOne
                        player.listOfCharacters.insert(characChoiceForAction, at: 0)//insert the value in playerOne
                       case "2" :
                           print("\nEntrez le nom de votre guérisseur :")
                        sameCharac(of: player)
                        characChoiceForAction = Healer(name: name, life: 500, type: "Guérisseur", weapon: SwordOfMeliodas())//recovery in a var the value for the tab of playerOne
                        player.listOfCharacters.insert(characChoiceForAction, at: 0)
                       default:
                           print("\nMauvais choix")
                       }
                    if player.listOfCharacters.count == 1 {
                           print("\nVotre Premier personnage est : ")
                        player.whoIhave()
                       }else if player.listOfCharacters.count > 1 {
                        print("\n\(player.nameOfPlayer) vos personnages sont : ")
                        player.whoIhave()
                       }
                       
                   }
               }
           }
        
        
        
        
        
        
        // MARK: -  Function allowing to know the remaining characters.

        func delete (player : Player) {
            
            
            for character in player.listOfCharacters{
                
                
                if character.life <= 0 {
                    print("\n\(character.name) est mort(e) !")

                    player.listOfCharacters.remove(at: nbr)
                    
                    
                    
                    
                }else{nbr += 1}
                randomWeapons(for: player)

            }
            nbr = 0
        }
        
        func stat (player : Player) {
            
            
            for character in player.listOfCharacters{
                
                
                if character.life <= 0 {
                    print("\n\(character.name) est mort(e) !")

                    player.listOfCharacters.remove(at: nbr)
                    
                    
                    
                    
                }else{nbr += 1}
                randomWeapons(for: player)

            }
            nbr = 0
        }
        
        
        
   //MARK: - Function allowing to have a random chest in the a party
        func randomWeapons(for player : Player){
            let randomIndex = Int(arc4random_uniform(UInt32(rWeapons.count)))
            let randomWeapon = rWeapons [randomIndex]
            let randomT = Int(arc4random_uniform(UInt32(30)))//tour aléatoire
            
            if randomT <= 5 && randomT >= 2 && player.nameOfPlayer == "Joueur 1"{
                print("Joueur 1 vous avez trouvé un coffre ! L'arme de votre personnage \(characChoiceForAction.name), \(characChoiceForAction.weapon.name)  de \(characChoiceForAction.weapon.weaponPoint) de dégâts sera remplacée!")
                characChoiceForAction.weapon = randomWeapon
                print("Félicitation vous héritez d'une une nouvelle arme qui est \(characChoiceForAction.weapon.name) avec \(characChoiceForAction.weapon.weaponPoint) de dégâts!")
            }else if randomT >= 25 && randomT <= 28 && player.nameOfPlayer == "Joueur 2"{
                print("Joueur 1 vous avez trouvé un coffre ! L'arme de votre personnage \(characChoiceForAction.name), \(characChoiceForAction.weapon.name)  de \(characChoiceForAction.weapon.weaponPoint) de dégâts sera remplacée!")
                characChoiceForAction.weapon = randomWeapon
                print("Félicitation vous héritez d'une une nouvelle arme qui est \(characChoiceForAction.weapon.name) avec \(characChoiceForAction.weapon.weaponPoint) de dégâts!")
            }
        }

       
    //MARK: - Function allows the player one to choose a character to heal
        
        func attack(of player : Player) {
                        
            print("\nVous utilisez le personnage \(characChoiceForAction.name) ayant l'arme \(characChoiceForAction.weapon.name)\n")
            
            print("Liste des personnages à attaquer :\n ")
            
            player.whoIhave()
            
            print("\nQui voulez-vous attaquer ?")

            
            while choiceOfThePlayer != true {
                                
                if player.listOfCharacters.count == 3 {
                    if let choice =  readLine(){
                                            
                    switch choice {
                    case "1":
                        characChoiceForSubire = player.listOfCharacters[0]
                        characChoiceForAction.attack(character: characChoiceForSubire)
                        choiceOfThePlayer = true
                    case "2":
                        characChoiceForSubire = player.listOfCharacters[1]
                        characChoiceForAction.attack(character: characChoiceForSubire)
                        choiceOfThePlayer = true
                    case "3":
                        characChoiceForSubire = player.listOfCharacters[2]
                        characChoiceForAction.attack(character: characChoiceForSubire)
                        choiceOfThePlayer = true
                    default:
                        print("\nMauvaise manipulation !")
                        choiceOfThePlayer = false
                    }
                    }
                }else if player.listOfCharacters.count == 2{
                    if let choice =  readLine(){
                                            
                    switch choice {
                    case "1":
                        characChoiceForSubire = player.listOfCharacters[0]
                        characChoiceForAction.attack(character: characChoiceForSubire)
                        choiceOfThePlayer = true
                    case "2":
                        characChoiceForSubire = player.listOfCharacters[1]
                        characChoiceForAction.attack(character: characChoiceForSubire)
                        choiceOfThePlayer = true
                    default:
                        print("Mauvaise manipulation !")
                        choiceOfThePlayer = false
                    }
                    }
                }else if player.listOfCharacters.count == 1{
                    if let choice =  readLine(){
                                            
                    switch choice {
                    case "1":
                        characChoiceForSubire = player.listOfCharacters[0]
                        characChoiceForAction.attack(character: characChoiceForSubire)
                        choiceOfThePlayer = true
                    default:
                        print("Mauvaise manipulation !")
                        choiceOfThePlayer = false
                    }
                    }
                }else{ choiceOfThePlayer = true}
                
                
                delete(player: player)
    }
}
       
        //MARK: - Function allows the player one to choose a character to heal
        
        func heal(of player : Player) {
            
                        
            print("\nVous utilisez le personnage \(characChoiceForAction.name) ayant l'arme \(characChoiceForAction.weapon.name)\n")
            
            print("Liste des personnages à soigner :\n ")
            
            player.whoIhave()
            
            print("\nQui voulez-vous soigner ?")

            
            while choiceOfThePlayer != true {
                
                //print(sentence)
                
                if player.listOfCharacters.count == 3 {
                    if let choice =  readLine(){
                                            
                    switch choice {
                    case "1":
                        characChoiceForSubire = player.listOfCharacters[0]
                        characChoiceForAction.healing(character: characChoiceForSubire)
                        choiceOfThePlayer = true
                    case "2":
                        characChoiceForSubire = player.listOfCharacters[1]
                        characChoiceForAction.healing(character: characChoiceForSubire)
                        choiceOfThePlayer = true
                    case "3":
                        characChoiceForSubire = player.listOfCharacters[2]
                        characChoiceForAction.healing(character: characChoiceForSubire)
                        choiceOfThePlayer = true
                    default:
                        print("\nMauvaise manipulation !")
                        choiceOfThePlayer = false
                    }
                    }
                }else if player.listOfCharacters.count == 2{
                    if let choice =  readLine(){
                                            
                    switch choice {
                    case "1":
                        characChoiceForSubire = player.listOfCharacters[0]
                        characChoiceForAction.healing(character: characChoiceForSubire)
                        choiceOfThePlayer = true
                    case "2":
                        characChoiceForSubire = player.listOfCharacters[1]
                        characChoiceForAction.healing(character: characChoiceForSubire)
                        choiceOfThePlayer = true
                    default:
                        print("Mauvaise manipulation !")
                        choiceOfThePlayer = false
                    }
                    }
                }else if player.listOfCharacters.count == 1{
                    if let choice =  readLine(){
                                            
                    switch choice {
                    case "1":
                        characChoiceForSubire = player.listOfCharacters[0]
                        characChoiceForAction.healing(character: characChoiceForSubire)
                        choiceOfThePlayer = true
                    default:
                        print("Mauvaise manipulation !")
                        choiceOfThePlayer = false
                    }
                    }
                }else{ choiceOfThePlayer = true}
                
                
                delete(player: player)
    }
}

         //MARK: -   Function allows to launch the game

        func choiceOfTheCharacter(of player : Player) {
            
        while choiceOfThePlayer != true {
            
            if player.listOfCharacters.count == 3 {
                print("\n\n\(player.nameOfPlayer) c'est votre tour ! \n\nListe de vos personnages :\n")
                player.whoIhave()
                print("\n\(player.nameOfPlayer) avec qui voulez-vous jouer ?")
                if let choice =  readLine(){
                    
                switch choice {
                case "1":
                    characChoiceForAction = player.listOfCharacters[0]
                    choiceOfThePlayer = true
                case "2":
                    characChoiceForAction = player.listOfCharacters[1]
                    choiceOfThePlayer = true
                case "3":
                    characChoiceForAction = player.listOfCharacters[2]
                    choiceOfThePlayer = true
                default:
                    print("Mauvaise manipulation !")
                    choiceOfThePlayer = false
                }
                }
            }else if player.listOfCharacters.count == 2{
                print("\n\n\(player.nameOfPlayer) c'est votre tour ! \n\nListe de vos personnages :\n")
                player.whoIhave()
                print("\n\(player.nameOfPlayer) avec qui voulez-vous jouer ?")
                if let choice =  readLine(){
                    
                switch choice {
                case "1":
                    characChoiceForAction = player.listOfCharacters[0]
                    choiceOfThePlayer = true
                case "2":
                    characChoiceForAction = player.listOfCharacters[1]
                    choiceOfThePlayer = true
                default:
                    print("Mauvaise manipulation !")
                    choiceOfThePlayer = false
                }
                }
                
            }else if player.listOfCharacters.count == 1{
                print("\n\n\(player.nameOfPlayer) c'est votre tour !")
                characChoiceForAction = player.listOfCharacters[0]
                print("\n\(player.nameOfPlayer) il ne vous reste que \(characChoiceForAction.name) ayant \(characChoiceForAction.life) points de vie pour jouer !")
                    choiceOfThePlayer = true

            }else {choiceOfThePlayer = true}
        }
            
    }
        
        func actionChoice (of player : Player) {
            
            if characChoiceForAction.type == "Guérisseur" {
                
                while choiceOfThePlayer != true{
                    
                    print("Voulez-vous 1: attaquer ou 2: soigner ?")
                    
                    if let choice = readLine(){
                        switch choice {
                        case "1":
                            if player.nameOfPlayer == "Joueur 1"{
                                attack(of: playerTwo)
                            }else{ attack(of: playerOne)}
                            choiceOfThePlayer = true
                        case "2" :
                            heal(of: player)
                            choiceOfThePlayer = true
                        default:
                            print("\nMauvaise Manipulation ! \n")
                            choiceOfThePlayer = false
                        }
                    }
                    
                }
            }else{
                if player.nameOfPlayer == "Joueur 1"{
                    attack(of: playerTwo)
                }else{ attack(of: playerOne)}
                choiceOfThePlayer = true
            }
            
        }
        
        //MARK: - Function allows the player two to choose a character to heal
        func letsplay() {
            
            
            chooseCharacters(of: playerOne)
            chooseCharacters(of: playerTwo)
            while playerOne.listOfCharacters.count != 0 && playerTwo.listOfCharacters.count != 0 {

                rounds += 1
                
                choiceOfTheCharacter(of: playerOne)
                
                choiceOfThePlayer = false
                
                actionChoice(of: playerOne)
                
                choiceOfThePlayer = false
                
                choiceOfTheCharacter(of: playerTwo)
                
                choiceOfThePlayer = false
                
                actionChoice(of: playerTwo)

                choiceOfThePlayer = false
                
                
            }
         
         }
        
        
        
        func win () {
            
            if playerOne.listOfCharacters.count == 0 {
                print("\nJoueur 2 vous avez gagné!\nStatistiques du jeu :\nJoueur 2 en \(rounds) tours vous avez fini le jeu avec ces joueurs :\n")
                
                playerTwo.whoIhave()

            }else if playerTwo.listOfCharacters.count == 0 {
                print("\nJoueur 1 vous avez gagné!\nStatistiques du jeu :\nJoueur 1 en \(rounds) tours vous avez fini le jeu avec ces joueurs :\n")
                
                playerOne.whoIhave()

            }
            
        }
 
        
    
    }
    
    
