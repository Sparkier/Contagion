//
//  PandemyAction.swift
//  Contagion
//
//  Created by Alex Bäuerle on 20.03.20.
//  Copyright © 2020 Alex Bäuerle. All rights reserved.
//

import Foundation

struct PandemyAction {
    let actionOptions: [String]
    let newStates: [PandemyState]
    let changeAction: (GameState) -> (GameState)
}
