//
//  History.swift
//  Contagion
//
//  Created by Alex Bäuerle on 20.03.20.
//  Copyright © 2020 Alex Bäuerle. All rights reserved.
//

import Foundation

class History: ObservableObject {
    @Published var states: [HistoryElement]

    init() {
        states = [HistoryElement(state: initGameTree(), selectedAction: nil, index: 0)]
    }
}

struct HistoryElement {
    let state: PandemyState
    var selectedAction: Int?
    let index: Int
}

func initGameTree() -> PandemyState {
    let stateTwo = PandemyState(texts: [StateText(day: 1, author: "Präsident Stefan Löfven, Schweden:", text: "Liebe Staatsoberhäpter, in der Zusammenarbeit mit einer Forschungsgruppe wollen wir Sie jährlichen Public Health Conference einladen. Mit Freundlichen Grüßen Stefan Löfven"), StateText(day: 2, author: "Berater:", text: "Hey, hast du schon die Agenda der Public Health Conference gesehen? 3 Tage voll mit möglichwerweiße interessanten Informationen. Soll ich für dich eine Reise buchen oder den Gesundheitsminister bitten daran teilzunehmen?"), StateText(day: 3, author: "Berater:", text: "Sie können entweder selber an der Konferenz teilnehmen, oder den Gesundheitsminister schicken.")], actions: nil)
    let stateOne = PandemyState(texts: [StateText(day: 4, author: "Berater:", text: "Alles klar! Im Anhang findest du deine gebuchte Zug reise und dein Hotel."),StateText(day: 5, author: "Zugunternehmen:", text: "Lieber Kunde, leider müssen wir Ihnen mittelen, dass der von Ihnen gebuchte Zug 2,5 h verspätung hat."), StateText(day: 6, author: "Berater:", text: "Tur mir leid, dass du jetzt ein bisschen zu spät zur Conference kommst. War wohl doch zu knapp kalkuliert."), StateText(day: 7, author: "Gesundheitsminister:", text: "Hey, ich finde es schön zu sehen, dass du das Gesundheitsthema ernst nimmst und selbst auf Conferencen wie diese gehst. Dennoch sind die Themen wohl ein bisschen zu Fachspezifisch?")], actions: nil)
    let initialState = PandemyState(texts: [StateText(day: 1, author: "Präsident Stefan Löfven, Schweden:", text: "Liebe Staatsoberhäpter, in der Zusammenarbeit mit einer Forschungsgruppe wollen wir Sie jährlichen Public Health Conference einladen. Mit Freundlichen Grüßen Stefan Löfven"), StateText(day: 2, author: "Berater:", text: "Hey, hast du schon die Agenda der Public Health Conference gesehen? 3 Tage voll mit möglichwerweiße interessanten Informationen. Soll ich für dich eine Reise buchen oder den Gesundheitsminister bitten daran teilzunehmen?"), StateText(day: 3, author: "Berater:", text: "Sie können entweder selber an der Konferenz teilnehmen, oder den Gesundheitsminister schicken.")], actions: [PandemyAction(actionOption: "Nimm selbst teil", newState: stateTwo, changeAction: changeGameState(_:))])
    return initialState
}

func changeGameState(_ gameState: GameState) {
    gameState.money = -8700
}
