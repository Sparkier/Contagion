//
//  GameState.swift
//  Contagion
//
//  Created by Alex Bäuerle on 20.03.20.
//  Copyright © 2020 Alex Bäuerle. All rights reserved.
//

import Foundation

class GameState: ObservableObject {
    @Published var population: Population
    @Published var time: Date
    @Published var money: Int
    @Published var mood: Float
    @Published var beginTime: Date

    init() {
        self.population = Population(healthy: 82000000, infected: 0, healed: 0, dead: 0)
        self.time = NSDate.now
        self.beginTime = NSDate.now
        self.money = 0
        self.mood = 80.0
    }

    func changeState(changeFunction: (GameState) -> ()) {
        changeFunction(self)
    }
}

struct Population {
    var healthy: Int
    var infected: Int
    var healed: Int
    var dead: Int
}
