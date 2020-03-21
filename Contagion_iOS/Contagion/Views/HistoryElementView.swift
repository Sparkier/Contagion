//
//  HistoryElement.swift
//  Contagion
//
//  Created by Alex Bäuerle on 20.03.20.
//  Copyright © 2020 Alex Bäuerle. All rights reserved.
//

import SwiftUI

struct HistoryElementView: View {
    let state: HistoryElement
    let timerHelper: TimerHelper
    let historyIndex: Int
    @EnvironmentObject var history: History
    @EnvironmentObject var gameState: GameState

    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            ForEach(state.state.stateTexts, id: \.day) { stateText in
                HistoryElementTextView(stateText: stateText).environmentObject(self.gameState)
            }
            if state.state.stateTexts.last!.day <= daysElapsed(gameState: gameState) {
                HStack {
                    state.state.stateActions.map { stateActions in
                        ForEach(0..<stateActions.count) { i in
                            HistoryElementActionView(stateAction: stateActions[i], timerHelper: self.timerHelper, index: i, historyIndex: self.historyIndex, historyDays: self.state.state.stateTexts.last!.day).environmentObject(self.gameState).environmentObject(self.history)
                        }
                    }
                }.onAppear {
                    self.timerHelper.stopTimer()
                }
            }
        }.padding()
    }
}
