//
//  PandemyState.swift
//  Contagion
//
//  Created by Alex Bäuerle on 20.03.20.
//  Copyright © 2020 Alex Bäuerle. All rights reserved.
//

import Foundation

struct PandemyState {
    let text: String
    let stateActions: [(PandemyAction, ActionResult)]?
}

func initState() -> PandemyState {
    return PandemyState(text: "Erster Infizierter", stateActions: [(PandemyAction(actionText: "No one is allowed to leave the house anymore."), ActionResult(gameStateChange: {(gameState: GameState) -> (GameState, PandemyState) in return (gameState, PandemyState(text: "Alle Geheilt!", stateActions: nil))})), (PandemyAction(actionText: "Fund the production of Tests."), ActionResult(gameStateChange: {(gameState: GameState) -> (GameState, PandemyState) in return (gameState, PandemyState(text: "Alle Geheilt!", stateActions: nil))}))])
}
