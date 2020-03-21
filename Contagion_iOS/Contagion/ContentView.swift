//
//  ContentView.swift
//  Contagion
//
//  Created by Alex Bäuerle on 20.03.20.
//  Copyright © 2020 Alex Bäuerle. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var history: History
    var gameState: GameState

    var body: some View {
        VStack {
//            HStack {
//                VStack {
//                    Text("Healthy: \(gameState.population.healthy)")
//                    Text("Infected: \(gameState.population.infected)")
//                    Text("Healed: \(gameState.population.healed)")
//                    Text("Dead: \(gameState.population.dead)")
//                }
//                Text("Costs: \(gameState.money)")
//                Text("Mood: \(gameState.mood)")
//                Text("Date: \(gameState.time)")
//            }
            List {
                ForEach(history.states) {
                    state in
                    HistoryElementView(state: state)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(history: initHistory(), gameState: initGameState())
    }
}
