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
    @EnvironmentObject var gameState: GameState

    var body: some View {
        VStack {
            ForEach(state.state.stateTexts, id: \.day) { stateText in
                HistoryElementTextView(stateText: stateText).environmentObject(self.gameState)
            }
//            if state.state.stateTexts.last!.day < daysElapsed(gameState: gameState) {
//                ForEach(state.state.stateActions, id: \.actionOption) { stateText in
//                    HistoryElementTextView(stateText: stateText).environmentObject(self.gameState)
//                }
//            }
        }
    }
}
