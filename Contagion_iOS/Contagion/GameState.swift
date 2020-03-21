//
//  GameState.swift
//  Contagion
//
//  Created by Alex Bäuerle on 20.03.20.
//  Copyright © 2020 Alex Bäuerle. All rights reserved.
//

import Foundation

struct GameState {
    var population: Population
    var time: Date
    var money: Int
    var mood: Float
}

struct Population {
    var healthy: Int
    var infected: Int
    var healed: Int
    var dead: Int
}

func initGameState() -> GameState {
    return GameState(population: Population(healthy: 82000000, infected: 0, healed: 0, dead: 0), time: NSDate.now, money: 0, mood: 80.0)
}
