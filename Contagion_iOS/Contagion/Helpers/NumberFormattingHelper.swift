//
//  NumberFormattingHelper.swift
//  Contagion
//
//  Created by Alex Bäuerle on 21.03.20.
//  Copyright © 2020 Alex Bäuerle. All rights reserved.
//

import Foundation

func formatMood(mood: Float) -> String {
    if mood >= 50 {
        return String(format: "👍 %.1f", mood)
    } else {
        return String(format: "👎 %.1f", mood)
    }
}

func formatPeopleNumber(number: Int) -> String {
    if number > 1000000 {
        let displayNumber = number / 1000000
        return "\(displayNumber) M"
    } else if number > 1000 {
        let displayNumber = number / 1000
        return "\(displayNumber) K"
    } else {
        return "\(number)"
    }
}

func formatMoneyNumber(number: Int) -> String {
    if abs(number) > 1000000 {
        let displayNumber = number / 1000000
        let displayNumberComma = abs(number / 100000 % 10)
        return "\(displayNumber).\(displayNumberComma) M"
    } else if abs(number) > 1000 {
        let displayNumber = number / 1000
        let displayNumberComma = abs(number / 100 % 10)
        return "\(displayNumber).\(displayNumberComma) K"
    } else {
        return "\(number)"
    }
}

func formatDate(date: Date) -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "dd.MM."
    return dateFormatter.string(from: date)
}
