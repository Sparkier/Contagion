//
//  History.swift
//  Contagion
//
//  Created by Alex Bäuerle on 20.03.20.
//  Copyright © 2020 Alex Bäuerle. All rights reserved.
//

import Foundation

struct History {
    let states: [HistoryElement]
}

func initHistory() -> History {
    History(states: [HistoryElement(state: initState(), selectedAction: nil)])
}

struct HistoryElement {
    let state: PandemyState
    let selectedAction: Int?
}
