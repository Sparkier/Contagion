//
//  HistoryElementTextView.swift
//  Contagion
//
//  Created by Alex Bäuerle on 21.03.20.
//  Copyright © 2020 Alex Bäuerle. All rights reserved.
//

import SwiftUI

struct HistoryElementTextView: View {
    let stateText: StateText
    @EnvironmentObject var gameState: GameState

    var body: some View {
        if daysElapsed(gameState: gameState) >= stateText.day {
            return AnyView(VStack {
                Text(stateText.author)
                Text(stateText.text)
            })
        } else {
            return AnyView(EmptyView())
        }
    }
}
