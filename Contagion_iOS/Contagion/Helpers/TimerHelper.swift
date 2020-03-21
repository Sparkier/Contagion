//
//  Timer.swift
//  Contagion
//
//  Created by Alex Bäuerle on 21.03.20.
//  Copyright © 2020 Alex Bäuerle. All rights reserved.
//

import Foundation

class TimerHelper {
    var timer: Timer?

    func startTimer(gameState: GameState) {
        guard timer == nil else { return }
        timer = Timer.scheduledTimer(withTimeInterval: 5, repeats: true, block: { timer in
            gameState.time = Calendar.current.date(byAdding: .day, value: 1, to: gameState.time) ?? gameState.time
        })
    }

    func stopTimer() {
        timer?.invalidate()
        timer = nil
    }
}
