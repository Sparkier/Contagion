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
        states = [HistoryElement(state: PandemyState(texts: [StateText(day: 1, author: "Präsident Stefan Löfven, Schweden:", text: "Liebe Staatsoberhäpter, in der Zusammenarbeit mit einer Forschungsgruppe wollen wir Sie jährlichen Public Health Conference einladen. Mit Freundlichen Grüßen Stefan Löfven"), StateText(day: 2, author: "Berater:", text: "Hey, hast du schon die Agenda der Public Health Conference gesehen? 3 Tage voll mit möglichwerweiße interessanten Informationen. Soll ich für dich eine Reise buchen oder den Gesundheitsminister bitten daran teilzunehmen?"), StateText(day: 3, author: "Berater:", text: "Sie können entweder selber an der Konferenz teilnehmen, oder den Gesundheitsminister schicken.")], actions: nil), selectedAction: nil, index: 0)]
    }
}

struct HistoryElement {
    let state: PandemyState
    let selectedAction: Int?
    let index: Int
}
