//
//  Timer.swift
//  Contagion
//
//  Created by Alex Bäuerle on 21.03.20.
//  Copyright © 2020 Alex Bäuerle. All rights reserved.
//

import Foundation
import UIKit

class TimerHelper {
    var timer: Timer?
    var gameState: GameState?

    func startTimer(gameState: GameState, dayDuration: Double) {
        guard timer == nil else { return }
        self.gameState = gameState
        timer = Timer.scheduledTimer(timeInterval: dayDuration, target: self, selector: #selector(newDay), userInfo: nil, repeats: true)

    }

    func stopTimer() {
        timer?.invalidate()
        timer = nil
    }

    @objc func newDay() {
        guard gameState != nil else { return }
        gameState!.time = Calendar.current.date(byAdding: .day, value: 1, to: gameState!.time) ?? gameState!.time
    }
}
