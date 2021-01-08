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

var go = Game(allCharacter: [Warlike(name: "Méliodas", life: 200, type: "Guerrier", weapon: Sword()),
                             Healer(name: "ElI", life: 200, type: "Guérisseur", weapon: Sword()),
                             Healer(name: "Merline", life: 300, type: "Guérisseur", weapon: Sword()),
                             Warlike(name: "King", life: 200, type: "Guerrier", weapon: Sword()),
                             Warlike(name: "Ban", life: 300, type: "Guerrier", weapon: Sword()),
                             Warlike(name: "Escanor", life: 400, type: "Guerrier", weapon: Sword()),
                             Healer(name: "Diane", life: 357, type: "Guérisseur", weapon: Sword()),])
go.chooseCharacters()
go.letsPlay()
