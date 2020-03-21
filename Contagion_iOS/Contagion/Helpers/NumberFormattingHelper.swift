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

func formatDate(date: Date) -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "dd.MM.yy"
    return dateFormatter.string(from: date)
}
