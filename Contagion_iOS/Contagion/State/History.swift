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
    let stateTwo = PandemyState(texts: [StateText(day: 9, author: "Gesundheitsminister:", text: "Hey, wie abgesprochen gehe ich heute auf die Konferenz. Ich werde mich danach nochmals mit weiteren Details melden. Bis dann!"), StateText(day: 10, author: "Gesundheitsminister:", text: "Die Konferenz ist sehr interessant. Es geht hauptsächlich um die Vermeidung von Krankheiten.")], actions: nil)
    
    let stateOne = PandemyState(texts: [StateText(day: 9, author: "Berater:", text: "Alles klar! Im Anhang findest du deine gebuchte Zug reise und dein Hotel."),StateText(day: 10, author: "Zugunternehmen:", text: "Lieber Kunde, leider müssen wir Ihnen mittelen, dass der von Ihnen gebuchte Zug 2,5 h verspätung hat."), StateText(day: 11, author: "Berater:", text: "Tur mir leid, dass du jetzt ein bisschen zu spät zur Conference kommst. War wohl doch zu knapp kalkuliert."), StateText(day: 12, author: "Gesundheitsminister:", text: "Hey, ich finde es schön zu sehen, dass du das Gesundheitsthema ernst nimmst und selbst auf Conferencen wie diese gehst. Dennoch sind die Themen wohl ein bisschen zu Fachspezifisch?"), StateText(day: 13, author: "Berater:", text: "Die Reise, Hotel und Spesen haben insgesamt 8700 Euro gekostet. Ich habe es auf das Health-Projekt gebucht."),StateText(day: 14, author: "Konferenz-Forscher:", text: "Hallo, Wir haben uns auf der Public Health Conference getroffen. Erinnern Sie sich noch an mich?"), StateText(day: 15, author: "Konferenz-Forscher:", text: "Hier noch einmal ein paar Informationen, zu dem Virus-Thema, über welcher wir gesprochen haben: In einer Nachbarland wurde ein neuartiges Virus entdackt. Dieses bis jetzt noch nicht eingeschätz werden kann."), StateText(day: 16, author: "Konferenz-Forscher:", text: "PS: Vergessen Sie nicht häfiges und gründliches Händewaschen schränkt die verbreitung der meisten Vieren ein."), StateText(day: 17, author: "Berater:", text: "Der Ihnen von der Conference bekannte forscher hat sich dazu bereit erklärt ein Truppe zusammen zu stellen, um das neuartige Vieren im Auge zu behalten. Ist das gewünscht?")], actions: nil)
    
    let initialState = PandemyState(texts: [StateText(day: 1, author: "Berater:", text: "Hallo, schön, dass Sie das neue Kommunikationssystem gefunden haben. Hier finden Sie, als Oberhaupt des Landers, alle Informationen und Nachrichten, welche Sie betreffen können."), StateText(day: 2, author: "Berater", text: "Ich bin Ihr persönlicher Berater und geben Ihnen die mir zur Verfügung stehenden Informationen und kann eine Tätigkeiten für Sie übernehmen."), StateText(day: 3, author: "Berater:", text: "Oben in dem Kommunikationssystem können Sie die aktuellen Informationen des Landes (Bevölkerung, infizierte Bürger, geheilte Bürger, verstobene Bürger) sehen. Desweiteren werden dir Ausgaben, die Moral und das Datum angezeigt."), StateText(day: 4, author: "Berater", text: "Versuche stehts die Moral so weit oben wie möglich zu lassen, da anderenfalls die Bürger sich nicht an deine maßnahmen halten."), StateText(day: 5, author: "Berater:", text: "Oh, da kommt schon die erste ggf. interessante Nachricht!"),StateText(day: 6, author: "Präsident Stefan Löfven, Schweden:", text: "Liebe Staatsoberhäpter, in der Zusammenarbeit mit einer Forschungsgruppe wollen wir Sie jährlichen Public Health Conference einladen. Mit Freundlichen Grüßen Stefan Löfven"), StateText(day: 7, author: "Berater:", text: "Hey, hast du schon die Agenda der Public Health Conference gesehen? 3 Tage voll mit möglichwerweiße interessanten Informationen. Soll ich für dich eine Reise buchen oder den Gesundheitsminister bitten daran teilzunehmen?"), StateText(day: 8, author: "Berater:", text: "Sie können entweder selber an der Konferenz teilnehmen, oder den Gesundheitsminister schicken.")], actions: [PandemyAction(actionOption: "Nimm selbst teil", newState: stateOne, changeAction: changeActionOne(_:)), PandemyAction(actionOption: "Schicke den Minister", newState: stateTwo, changeAction: changeActionTwo(_:))])
    return initialState
}

func changeActionOne(_ gameState: GameState) {
    gameState.money = -8700
}

func changeActionTwo(_ gameState: GameState) {
    gameState.money = -7700
}
