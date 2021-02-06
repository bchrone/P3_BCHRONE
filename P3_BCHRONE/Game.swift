    //
    //  Game.swift
    //  P3_BCHRONE
    //
    //  Created by Bryan CHRONE on 23/12/2020.
    //

    import Foundation

    class Game {

        var rWeapons : [Weapon]
        var stats : [String: String]
        var characChoiceForAction : Character
        var characChoiceForSubire : Character
        var rounds : Int
        var nbr : Int
        var choiceOfThePlayer : Bool
        let playerOne : Player
        let playerTwo : Player

            init () {
                self.stats = ["Joueur 1":"", "Joueur 2":""]
                self.playerOne = Player(nameOfPlayer: "Joueur 1")
                self.playerTwo = Player(nameOfPlayer: "Joueur 2")
                self.rWeapons = [Sword(), Magic(), Dague()]
                self.characChoiceForAction = Warlike(name: "Eli", life: 2000, type: "Guérisseur", weapon: Gideon())
                self.characChoiceForSubire = Warlike(name: "Eli", life: 2000, type: "Guérisseur", weapon: Gideon())
                self.rounds = 0
                self.nbr = 0
                self.choiceOfThePlayer = false
            }
            
        
        func delete (player : Player) {
            
            
            for character in player.listOfCharacters{
                
                
                if character.life <= 0 {
                    print("\n\(character.name) est mort(e) !")
                    if player.nameOfPlayer == "Joueur 1" || character.life <= 0{
                        stats["Joueur 1"]? += "\n" + character.name + " est mort au bout de \(rounds) tours."
                    }else if player.nameOfPlayer == "Joueur 2" || character.life <= 0{
                        stats["Joueur 2"]? += "\n" + character.name + " est mort au bout de \(rounds) tours."
                    }
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
                    if player.nameOfPlayer == "Joueur 1" || character.life <= 0{
                        stats["Joueur 1"]? += "\n" + character.name + " est mort au bout de \(rounds) tours."
                    }else if player.nameOfPlayer == "Joueur 2" || character.life <= 0{
                        stats["Joueur 2"]? += "\n" + character.name + " est mort au bout de \(rounds) tours."
                    }
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
            
            
            playerOne.chooseCharacters()
            playerTwo.chooseCharacters()

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
                print("\nJoueur 2 vous avez gagné!\nVoici les statistiques des différents joueurs :\nJoueur 2 en \(rounds) tours vous avez fini le jeu avec ces joueurs :\n")
                
                playerTwo.whoIhave()
  /*
                for (player, statOfPLayer) in stats {
                    if player == "Joueur 2" {
                        print(statOfPLayer)
                    }
                }
                
                print("\nJoueur 1 vous avez perdu !\n")
                
                for (player, statOfPLayer) in stats {
                    if player == "Joueur 1" {
                        print(statOfPLayer)
                    }
                }
   */
            }else if playerTwo.listOfCharacters.count == 0 {
                print("\nJoueur 1 vous avez gagné!\n Voici les statistiques des différents joueurs :\nJoueur 1 en \(rounds) tours vous avez fini le jeu avec ces joueurs :\n")
                
                playerOne.whoIhave()
           /*
                for (player, statOfPLayer) in stats {
                    if player == "Joueur 1" {
                        print(statOfPLayer)
                    }
                }
                
                print("\nJoueur 2 vous avez perdu !\n")
                
                for (player, statOfPLayer) in stats {
                    if player == "Joueur 2" {
                        print(statOfPLayer)
                    }
                }*/

            }
            
        }
 
        
    
    }
    
    
