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
    let state28 = PandemyState(texts: [StateText(day: 85, author: "Berater:", text: "Dem Regierungsoberhaupt wurde angeboten, eine kleine Gruppe von inländischen Forschern zu schicken, um Informationen zu sammeln."), StateText(day: 89, author: "Berater:", text: "Die Regierung hat das Angebot leider abgeleht, da sie darauf hinweißen, dass die Forscher in den eigenen Land mindestens genau so gründlich arbeiten."), StateText(day: 90, author: "Berater:", text: "Wollen Sie den Gesundheitsminister in die Angelegeheit mit einbiden?")], actions: nil)
       
    let state27 = PandemyState(texts: [StateText(day: 100, author: "", text: "")], actions: nil)
    
    let stateFourteen = PandemyState(texts: [StateText(day: 100, author: "", text: "")], actions: nil)
       
    let stateThirteen = PandemyState(texts: [StateText(day: 21, author: "Berater:", text: "Die Anfrage auf Auskunft, über das Virus-Gerücht, ist an das möglicherweiße befallene Land gesendet worden."), StateText(day: 24, author: "Berater:", text: "Leider dauert es einige Tage, bis die Informationen zusammengetragen werden können."), StateText(day: 25, author: "Berater;", text: "Das Nachbarland muss ebenfalls diese Gerüchte validieren."), StateText(day: 43, author: "Gesunheitsminister:", text: "In Forscherkreisen wird das Gerücht über den neuartigen Virus von vielen als wirkliche Bedrohung gesehen und von einigen als Hirngespenst."), StateText(day: 78, author: "Berater:", text: "Die Regierung hat bestätigt, dass ein derzeit noch unbekannter Virus aufgetreten ist, jedoch wird versichter, dass dieser bereits unter Kontrolle gebracht wurde."), StateText(day: 83, author: "Berater:", text: "Die Regierung vericht Sie immer auf den neusten Stand zu bringen."), StateText(day: 84, author: "Berater:", text: "Wollen Sie auf weitere Informationen der Regierung warten oder Ihre Hilfe zur aufklärung anbieten?")], actions: [PandemyAction(actionOption: "Abwarten", newState: state27, changeAction: changeAction26(_:)), PandemyAction(actionOption: "Hilfe anbieten", newState: state28, changeAction: changeAction27(_:))])
    
    let stateTwelve = PandemyState(texts: [StateText(day: 100, author: "", text: "")], actions: nil)
       
    let stateEleven = PandemyState(texts: [StateText(day: 100, author: "", text: "")], actions: nil)
    
    let stateTen = PandemyState(texts: [StateText(day: 100, author: "", text: "")], actions: nil)
       
    let stateNine = PandemyState(texts: [StateText(day: 100, author: "", text: "")], actions: nil)
    
    let stateEight = PandemyState(texts: [StateText(day: 100, author: "", text: "")], actions: nil)
    
    let stateSeven = PandemyState(texts: [StateText(day: 100, author: "", text: "")], actions: nil)
    
    let stateSix = PandemyState(texts: [StateText(day: 16, author: "Gesundheitsminister:", text: "Schade! Ich denke, dass die Umsetzung der Idee gut geworden wäre."), StateText(day: 17, author: "Gesundheitminister:", text: "Eine kleine Umfrage meinter Berater hat gezeigt, dass die Gesetzeseinführung positiv bei der Bevölkerung angekommen wäre. Ich komme zu einer späteren Zeit nochmals auf Sie zurück."), StateText(day: 18, author: "Gesundheitsminister:", text: "Meinen Mitarbeitern zufolge, welcher auf der Konferenz waren, soll es ein neues Virus geben. Noch ist nichts näheres bekannt."), StateText(day: 19, author: "Gesundheitsminister:", text: "Das neuartige Virus soll in einem nahegelegten Land endtdeckt worden sein."), StateText(day: 20, author: "Berater:", text: "Sollen Informationen zu dem neuen Virus aus dem betroffenen Land erfragt werden oder soll auf eine offizelle Stellungnahme gewartet werden?")], actions: [PandemyAction(actionOption: "Informationen erfragen", newState: stateThirteen, changeAction: changeActionTwelve(_:)), PandemyAction(actionOption: "Stellungnahme abwarten", newState: stateFourteen, changeAction: changeActionThirteen(_:))])
    
    let stateFive = PandemyState(texts:[StateText(day: 16, author: "Gesunheitsminister;", text: "Sehr gute Entscheidung! Ich werde mich in den komenden Tagen nochmals bei Ihnen melden, wie es weiter gehen wird."), StateText(day: 17, author: "Berater:", text: "Der Gesundheitsminster hat das Impfpflichtvorhaben ohne Zustimmung öffentlich gemacht. Den meisten Bürgern ist die Idee egal, jedoch gibt es einen kleinen Teil, welche die Idee ganz und gar nicht mögen."), StateText(day: 18, author: "Gesundheitsminister:", text: "Wir haben ein Problem! Im ganzen Land wurden Demonstrationen gegen die Impflicht angesetzt! Sogenannte Impfgegner wollen für eine Selbstbestimmung auf die Straßen gehen."), StateText(day: 19, author: "Berater:", text: "Wir können entweder den Gesetzesentwurf umformulieren oder wir könnten den Bürger*innen entegentreten, um Ihnen die Situation zu verdeutlichen.")], actions: [PandemyAction(actionOption: "Gesetzentwurf anpassen", newState: stateEleven, changeAction: changeActionTen(_:)), PandemyAction(actionOption: "Gesetzentwurf lassen", newState: stateTwelve, changeAction: changeActionNine(_:))])
    
    let stateFour = PandemyState(texts: [StateText(day: 19, author: "Berater:", text: "Es wird vorerst keine Task Force erstellt. Wäre möglicherweße auch unnötig."), StateText(day: 34, author: "Berater:", text: "Euer Gesundheitsminister macht in der Öffentlichkeit mehr und mehr Stimmung für ein Gesetzt, welches eine Impfpflicht einführt."), StateText(day: 35, author: "Berater:", text: "Ich denke es wäre Sinnvoll, wenn Sie den Gesundheitsminister darauf ansprechen würden.")], actions: [PandemyAction(actionOption: "Gesundheitsminister ansprechen", newState: stateNine, changeAction: changeActionEight(_:)), PandemyAction(actionOption: "Kein Prozess", newState: stateTen, changeAction: changeActionNine(_:))])
    
    let stateThree = PandemyState(texts: [StateText(day: 18, author: "Berater:", text: "Die Task Force wurde eingerichtet und hat einen wöchentliches Budget von 5000 €."), StateText(day: 19, author: "Konferenz-Forscher:", text: "Vielen Dank für das Vertrauen! Wir melden und bei Fortschritten."), StateText(day: 21, author: "Konferenz-Forscher:", text: "Gerüchten zufolge soll es ein neuen Virus geben. Über diesen Virus ist jedoch noch nichts bekannt. Weitere informationen folgen."), StateText(day: 22, author: "Konferenz-Forscher:", text: "Der neuartige Virus soll in einem nahegelegenen Land entdeckt worden sein."), StateText(day: 23, author: "Berater:", text: "Sollen Informationen zu dem neuen Virus aus dem betroffenen Land erfragt werden oder soll auf eine offizelle Stellungnahme gewartet werden?")], actions: [PandemyAction(actionOption: "Informationen erfragen", newState: stateSeven, changeAction: changeActionSix(_:)), PandemyAction(actionOption: "Stellungnahme abwarten", newState: stateEight, changeAction: changeActionSeven(_:))])
    
    let stateTwo = PandemyState(texts: [StateText(day: 9, author: "Gesundheitsminister:", text: "Hey, wie abgesprochen gehe ich heute auf die Konferenz. Ich werde mich danach nochmals mit weiteren Details melden. Bis dann!"), StateText(day: 10, author: "Gesundheitsminister:", text: "Die Konferenz ist sehr interessant. Es geht hauptsächlich um die Vermeidung von Krankheiten."), StateText(day: 11, author: "Gesundheitsminister:", text: "Die einfachsten und trotzdem effektiven Mittel zur Einschränkung der Verbreitung eines Viruses ist das häufige und intensive Händewaschen."), StateText(day: 12, author: "Gesundheitsmininster:", text: "Die Konferenz ist jetzt vorbei. Es gibt im Moment keine Maßnahmen die zu treffen sind. Bei einer Änderung der Sachlage können wir uns mit dem neuen Wissen nochmals zusammensetzen."), StateText(day: 13, author: "Berater:", text: "Die Reise, Hotel und Spesen für den Gesundheitsminister haben insgesamt 7700 Euro gekostet. Ich habe die Kosten auf das Health-Projekt gebucht."), StateText(day: 14, author: "Gesundheitsminister:", text: "Hallo, ich habe mich nochmals mit einigen Gesunheitsminstern der ander Ländern zusemmengesetzt. Viele sind der Meindung man sollte eine Impflicht für die Prevention mancher Krankheiten einsetzt."), StateText(day: 15, author: "Gesundheitsminister:", text: "Ich würde empfehlen eine solche Maßnahme umzusetzen. Ich kann den Prozess zur Einführung eines solchen Gesetztes anstoßen, falls dies gewollt ist?")], actions: [PandemyAction(actionOption: "Prozess anstoßen", newState: stateFive, changeAction: changeActionFour(_:)), PandemyAction(actionOption: "Kein Prozess", newState: stateSix, changeAction: changeActionFive(_:))])
    
    let stateOne = PandemyState(texts: [StateText(day: 9, author: "Berater:", text: "Alles klar! Im Anhang findest du deine gebuchte Zug reise und dein Hotel."),StateText(day: 10, author: "Zugunternehmen:", text: "Lieber Kunde, leider müssen wir Ihnen mittelen, dass der von Ihnen gebuchte Zug 2,5 h verspätung hat."), StateText(day: 11, author: "Berater:", text: "Tur mir leid, dass du jetzt ein bisschen zu spät zur Konferenz kommst. War wohl doch zu knapp kalkuliert."), StateText(day: 12, author: "Gesundheitsminister:", text: "Hey, ich finde es schön zu sehen, dass du das Gesundheitsthema ernst nimmst und selbst auf Konferenzen wie diese gehst. Dennoch sind die Themen wohl ein bisschen zu Fachspezifisch?"), StateText(day: 13, author: "Berater:", text: "Die Reise, Hotel und Spesen haben insgesamt 8700 Euro gekostet. Ich habe es auf das Health-Projekt gebucht."),StateText(day: 14, author: "Konferenz-Forscher:", text: "Hallo, Wir haben uns auf der Public Health Conference getroffen. Erinnern Sie sich noch an mich?"), StateText(day: 15, author: "Konferenz-Forscher:", text: "Hier noch einmal ein paar Informationen, zu dem Virus-Thema, über welcher wir gesprochen haben: In einer Nachbarland wurde ein neuartiges Virus entdackt. Dieses bis jetzt noch nicht eingeschätz werden kann."), StateText(day: 16, author: "Konferenz-Forscher:", text: "PS: Vergessen Sie nicht häfiges und gründliches Händewaschen schränkt die verbreitung der meisten Vieren ein."), StateText(day: 17, author: "Berater:", text: "Der Ihnen von der Konferenz bekannte Forscher hat sich dazu bereit erklärt ein Truppe zusammen zu stellen, um das neuartige Vieren im Auge zu behalten. Ist das gewünscht?")], actions: [PandemyAction(actionOption: "Task Force aufstellen", newState: stateThree, changeAction: changeActionTwo(_:)), PandemyAction(actionOption: "Keine Task Force", newState: stateFour, changeAction: changeActionThree(_:))])
    
    let initialState = PandemyState(texts: [StateText(day: 1, author: "Berater:", text: "Hallo, schön, dass Sie das neue Kommunikationssystem gefunden haben. Hier finden Sie, als Oberhaupt des Landes, alle Informationen und Nachrichten, welche Sie betreffen können."), StateText(day: 2, author: "Berater:", text: "Ich bin Ihr persönlicher Berater und gebe Ihnen die mir zur Verfügung stehenden Informationen und kann eine Tätigkeiten für Sie übernehmen."), StateText(day: 3, author: "Berater:", text: "Oben in dem Kommunikationssystem können Sie die aktuellen Informationen des Landes (Bevölkerung, infizierte Bürger, geheilte Bürger, verstobene Bürger) sehen. Desweiteren werden dir Ausgaben, die Moral und das Datum angezeigt."), StateText(day: 4, author: "Berater:", text: "Versuche stehts die Moral so weit oben wie möglich zu lassen, da anderenfalls die Bürger sich nicht an deine Maßnahmen halten."), StateText(day: 5, author: "Berater:", text: "Oh, da kommt schon die erste ggf. interessante Nachricht!"),StateText(day: 6, author: "Präsident Stefan Löfven, Schweden:", text: "Liebe Staatsoberhäupter, in der Zusammenarbeit mit einer Forschungsgruppe wollen wir Sie jährlichen Public Health Conference einladen. Mit Freundlichen Grüßen Stefan Löfven"), StateText(day: 7, author: "Berater:", text: "Hey, hast du schon die Agenda der Public Health Conference gesehen? 3 Tage voll mit möglichwerweiße interessanten Informationen. Soll ich für dich eine Reise buchen oder den Gesundheitsminister bitten daran teilzunehmen?"), StateText(day: 8, author: "Berater:", text: "Sie können entweder selber an der Konferenz teilnehmen, oder den Gesundheitsminister schicken.")], actions: [PandemyAction(actionOption: "Selbst teilnehmen", newState: stateOne, changeAction: changeActionZero(_:)), PandemyAction(actionOption: "Minister schicken", newState: stateTwo, changeAction: changeActionOne(_:))])
    return initialState
}

func changeActionZero(_ gameState: GameState) {
    gameState.money = -8700
}

func changeActionOne(_ gameState: GameState) {
    gameState.money = -7700
}

func changeActionTwo(_ gameState: GameState) {
    gameState.money = -5000
}

func changeActionThree(_ gameState: GameState) {
}

func changeActionFour(_ gameState: GameState) {
    gameState.mood = -1.1
}

func changeActionFive(_ gameState: GameState) {
}

func changeActionSix(_ gameState: GameState) {
}

func changeActionSeven(_ gameState: GameState) {
}

func changeActionEight(_ gameState: GameState) {
    // tbd
}

func changeActionNine(_ gameState: GameState) {
    // tbd
}

func changeActionTen(_ gameState: GameState) {
    // tbd
}

func changeActionEleven(_ gameState: GameState) {
    // tbd
}

func changeActionTwelve(_ gameState: GameState) {
    // tbd
}

func changeActionThirteen(_ gameState: GameState) {
    // tbd
}

func changeAction26(_ gameState: GameState) {
    // tbd
}

func changeAction27(_ gameState: GameState) {
    // tbd
}
