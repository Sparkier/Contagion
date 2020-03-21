//
//  HistoryElementActionView.swift
//  Contagion
//
//  Created by Alex Bäuerle on 21.03.20.
//  Copyright © 2020 Alex Bäuerle. All rights reserved.
//

import SwiftUI

struct HistoryElementActionView: View {
    let stateAction: PandemyAction
    let timerHelper: TimerHelper
    let index: Int
    @EnvironmentObject var history: History
    @EnvironmentObject var gameState: GameState

    var body: some View {
        Button(action: {
            self.gameState.changeState(changeFunction: self.stateAction.changeAction)
            self.timerHelper.startTimer(gameState: self.gameState)
            self.history.states[self.history.states.count - 1].selectedAction = self.index
            self.history.states.append(HistoryElement(state: self.stateAction.newState, selectedAction: nil, index: self.history.states.last!.index + 1))
        }) {
            Text(stateAction.actionOption)
        }.buttonStyle(GradientButtonStyle())
    }
}

struct GradientButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .foregroundColor(Color.white)
            .padding()
            .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.orange]), startPoint: .leading, endPoint: .trailing))
            .cornerRadius(15.0)
    }
}
