//
//  DaysHelper.swift
//  Contagion
//
//  Created by Alex Bäuerle on 21.03.20.
//  Copyright © 2020 Alex Bäuerle. All rights reserved.
//

import Foundation

func daysElapsed(gameState: GameState) -> Int {
    let compareDate = Calendar.current.date(byAdding: .day, value: 1, to: gameState.time) ?? gameState.time
    let diffInDays = Calendar.current.dateComponents([.day], from: gameState.beginTime, to: compareDate).day
    return diffInDays ?? 0
}
