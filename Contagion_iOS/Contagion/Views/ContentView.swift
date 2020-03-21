//
//  ContentView.swift
//  Contagion
//
//  Created by Alex Bäuerle on 20.03.20.
//  Copyright © 2020 Alex Bäuerle. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var history: History
    @ObservedObject var gameState: GameState
    let timerHelper: TimerHelper

    var body: some View {
        VStack {
            HStack {
                VStack {
                    Text("😊 \(formatPeopleNumber(number: gameState.population.healthy))")
                    Text("🦠 \(formatPeopleNumber(number: gameState.population.infected))")
                    Text("💚 \(formatPeopleNumber(number: gameState.population.healed))")
                    Text("💀 \(formatPeopleNumber(number: gameState.population.dead))")
                }
                Text("💵 \(gameState.money) €")
                Text(formatMood(mood: gameState.mood))
                Text("🗓 \(formatDate(date: gameState.time))")
            }
            List {
                ForEach(history.states, id: \.index) {
                    state in
                    HistoryElementView(state: state, timerHelper: self.timerHelper).environmentObject(self.gameState).environmentObject(self.history)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let timerHelper = TimerHelper()
        let gameState = GameState()
        timerHelper.startTimer(gameState: gameState)
        return ContentView(history: History(), gameState: gameState, timerHelper: timerHelper)
    }
}
