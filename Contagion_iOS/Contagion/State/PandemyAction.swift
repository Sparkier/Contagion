//
//  PandemyAction.swift
//  Contagion
//
//  Created by Alex Bäuerle on 20.03.20.
//  Copyright © 2020 Alex Bäuerle. All rights reserved.
//

import Foundation

struct PandemyAction {
    let actionOption: String
    let newState: PandemyState
    let changeAction: (GameState) -> ()
}
