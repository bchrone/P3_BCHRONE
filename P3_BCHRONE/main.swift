//
//  main.swift
//  P3_BCHRONE
//
//  Created by Bryan CHRONE on 23/12/2020.
//

import Foundation

/*var player = Warlike(name: "Elizabeth", life: 3205, weapon: Sword())
var player2 = Healer(name: "Chouette", life: 220, weapon: Magic())
player.attack(character: player2)
*/

var game = Game(allCharacter: [Warlike(name: "Méliodas", life: 700, type: "Guerrier", weapon: SwordOfMeliodas()),
                             Healer(name: "ElIzabeth", life: 540, type: "Guérisseur", weapon:Gideon()),
                             Healer(name: "Merline", life: 400, type: "Guérisseur", weapon: Herritt()),
                             Warlike(name: "King", life: 600, type: "Guerrier", weapon: Aldan()),
                             Warlike(name: "Ban", life: 305, type: "Guerrier", weapon: Lostvayne()),
                             Warlike(name: "Escanor", life: 800, type: "Guerrier", weapon: Magic()),
                             Healer(name: "Diane", life: 450, type: "Guérisseur", weapon: Dague()),])
game.chooseCharacters()
game.letsPlay()

