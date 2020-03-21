//
//  PandemyState.swift
//  Contagion
//
//  Created by Alex Bäuerle on 20.03.20.
//  Copyright © 2020 Alex Bäuerle. All rights reserved.
//

import Foundation

class PandemyState {
    let stateTexts: [StateText]
    let stateActions: [PandemyAction]?

    init(texts: [StateText], actions: [PandemyAction]?) {
        stateTexts = texts
        stateActions = actions
    }
}

struct StateText {
    let day: Int
    let author: String
    let text: String
}
