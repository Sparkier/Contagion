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

func daysUntil(gameState: GameState, day: Int) -> Int {
    return day - daysElapsed(gameState: gameState)
}

func secondsElapsed(since: Date, until: Date) -> Int {
    let compareDate = Calendar.current.date(byAdding: .second, value: 1, to: until)!
    let diffInSeconds = Calendar.current.dateComponents([.second], from: since, to: compareDate).second
    return diffInSeconds ?? 0
}
