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
    let historyIndex: Int
    let historyDays: Int
    @Binding var dayDuration: Double
    @Binding var winViewDismissed: Bool
    @EnvironmentObject var history: History
    @EnvironmentObject var gameState: GameState

    var body: some View {
        Button(action: {
            self.gameState.changeState(changeFunction: self.stateAction.changeAction)
            self.timerHelper.startTimer(gameState: self.gameState, dayDuration: self.dayDuration)
            // Remove all History Elements up to the current, but keep the current.
            let removeK = self.history.states.count - self.historyIndex - 1
            self.history.states.removeLast(removeK)
            self.gameState.time = Calendar.current.date(byAdding: .day, value: self.historyDays, to: self.gameState.beginTime) ?? self.gameState.time
            self.history.states[self.history.states.count - 1].selectedAction = self.index
            self.history.states.append(HistoryElement(state: self.stateAction.newState, selectedAction: nil, index: self.history.states.last!.index + 1))
            self.winViewDismissed = false
        }) {
            Text(stateAction.actionOption).frame(maxWidth: .infinity).lineLimit(1)
        }.buttonStyle(GradientButtonStyle(selectedIndex: self.history.states[self.historyIndex].selectedAction, buttonIndex: self.index))
    }
}

struct GradientButtonStyle: ButtonStyle {
    private let selected: Int?
    private let index: Int
    private let buttonGradient = LinearGradient(gradient: Gradient(colors: [Color(UIColor(named: "ButtonColor1")!), Color(UIColor(named: "ButtonColor2")!)]), startPoint: .leading, endPoint: .trailing)
    private let buttonGradientDeselected = LinearGradient(gradient: Gradient(colors: [Color(UIColor(named: "ButtonColor1")!).opacity(0.3), Color(UIColor(named: "ButtonColor2")!).opacity(0.3)]), startPoint: .leading, endPoint: .trailing)

    init(selectedIndex: Int?, buttonIndex: Int) {
        self.selected = selectedIndex
        self.index = buttonIndex
    }

    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .foregroundColor(Color.white)
            .padding()
            .background(self.selected == self.index || self.selected == nil ? buttonGradient : buttonGradientDeselected)
            .cornerRadius(15.0)
    }
}
