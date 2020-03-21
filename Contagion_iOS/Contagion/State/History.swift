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
    let stateTwo = PandemyState(texts: [StateText(day: 4, author: "Gesundheitsminister:", text: "Hey, wie abgesprochen gehe ich heute auf die Conference. Ich werde mich danach nochmals mit weiteren Details melden. Bis dann!"), StateText(day: 5, author: "Gesundheitsminister:", text: "Die Conference ist sehr interessant. Es geht hauptsächlich um die Vermeidung von Krankheiten.")], actions: nil)
    
    let stateOne = PandemyState(texts: [StateText(day: 4, author: "Berater:", text: "Alles klar! Im Anhang findest du deine gebuchte Zug reise und dein Hotel."),StateText(day: 5, author: "Zugunternehmen:", text: "Lieber Kunde, leider müssen wir Ihnen mittelen, dass der von Ihnen gebuchte Zug 2,5 h verspätung hat."), StateText(day: 6, author: "Berater:", text: "Tur mir leid, dass du jetzt ein bisschen zu spät zur Conference kommst. War wohl doch zu knapp kalkuliert."), StateText(day: 7, author: "Gesundheitsminister:", text: "Hey, ich finde es schön zu sehen, dass du das Gesundheitsthema ernst nimmst und selbst auf Conferencen wie diese gehst. Dennoch sind die Themen wohl ein bisschen zu Fachspezifisch?"), StateText(day: 8, author: "Berater:", text: "Die Reise, Hotel und Spesen haben insgesamt 8700 Euro gekostet. Ich habe es auf das Health-Projekt gebucht."),StateText(day: 9, author: "Konferenz-Forscher:", text: "Hallo, Wir haben uns auf der Public Health Conference getroffen. Erinnern Sie sich noch an mich?"), StateText(day: 10, author: "Konferenz-Forscher:", text: "Hier noch einmal ein paar Informationen, zu dem Virus-Thema, über welcher wir gesprochen haben: In einer Nachbarland wurde ein neuartiges Virus entdackt. Dieses bis jetzt noch nicht eingeschätz werden kann."), StateText(day: 11, author: "Konferenz-Forscher:", text: "PS: Vergessen Sie nicht häfiges und gründliches Händewaschen schränkt die verbreitung der meisten Vieren ein."), StateText(day: 12, author: "Berater:", text: "Der Ihnen von der Conference bekannte forscher hat sich dazu bereit erklärt ein Truppe zusammen zu stellen, um das neuartige Vieren im Auge zu behalten. Ist das gewünscht?")], actions: nil)
    
    let initialState = PandemyState(texts: [StateText(day: 1, author: "Präsident Stefan Löfven, Schweden:", text: "Liebe Staatsoberhäpter, in der Zusammenarbeit mit einer Forschungsgruppe wollen wir Sie jährlichen Public Health Conference einladen. Mit Freundlichen Grüßen Stefan Löfven"), StateText(day: 2, author: "Berater:", text: "Hey, hast du schon die Agenda der Public Health Conference gesehen? 3 Tage voll mit möglichwerweiße interessanten Informationen. Soll ich für dich eine Reise buchen oder den Gesundheitsminister bitten daran teilzunehmen?"), StateText(day: 3, author: "Berater:", text: "Sie können entweder selber an der Konferenz teilnehmen, oder den Gesundheitsminister schicken.")], actions: [PandemyAction(actionOption: "Nimm selbst teil", newState: stateTwo, changeAction: changeGameState(_:))])
    return initialState
}

func changeGameState(_ gameState: GameState) {
    gameState.money = -8700
}
