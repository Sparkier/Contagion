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
    let state28112111112 = PandemyState(texts: [StateText(day: 100, author: "", text: "")], actions: nil)
    
    let state28112111111 = PandemyState(texts: [StateText(day: 100, author: "", text: "")], actions: nil)
    
    let state2811211112 = PandemyState(texts: [StateText(day: 100, author: "", text: "")], actions: nil)
    
    let state2811211111 = PandemyState(texts: [StateText(day: 178, author: "Gesundheitsminister:", text: "Die Infiziertenzahlen im In- und Ausland steigen stark. Als tragische Neuigkeiten steigen die Zahlen der Toten in den schon Länger infizierten Ländern ebenalls rasant."), StateText(day: 179, author: "Berater:", text: "Experten zufolge hat sich die Pressekonferenz gut auf die aktuelle Situation ausgewirkt, da viele die Maßnahmen ersnt nehmen steigt die Infiziertenzahl langsamer als in anderen Ländern."), StateText(day: 180, author: "Berater:", text: "Um die dennoch steigenden Zahlen einzuschränken sollten wir den nächsten Schriff überlegen. Hierzu kam der Vorschlag, dass die Grenzen zu allen aderen Nachbarstaaten ebenfalls teilgesperrt werden sollen. Wollen Sie das umsetzen oder denken Sie, dass diese Maßnahme den Rahmen sprengen würde?")], actions: [PandemyAction(actionOption: "Weitere Teilsperrungen", newState: state28112111111, changeAction: changeAction28112111111), PandemyAction(actionOption: "Abwarten", newState: state28112111112, changeAction: changeAction28112111112)])
    
    let state281121112 = PandemyState(texts: [StateText(day: 100, author: "", text: "")], actions: nil)
    
    let state281121111 = PandemyState(texts: [StateText(day: 173, author: "Berater:", text: "Die Teilsperrung ab dem heutigen Tage wird an der einen Grenze druchgeführt. Einige personen halten diesen Schriff für völlig überzogen."), StateText(day: 174, author: "Gesundheitsminister:", text: "Die Teilsperrung wird uns bestimmt sehr hilfreich sein. Ich vermute wir haben den Virus bereits im Griff. Herzlichen Glückwunsch Sie haben die Lage sehr gut eingeschätzt!"), StateText(day: 175, author: "Task Force:", text: "Aufgrund der Daten aus den anderen Ländern können wir den Virus besser und besser einschätzen. Hier ein paar neue Erkenntnisse: 1. Der Virus ist speziell für ältere Menschen und Menschen mit Vorerkankung sehr gefährlich. Im Umkehrschluss besteht die Geafhr bei jungen Menschen eher weniger. 2. Der Virus verbreiter sich sehr schnell und manche Personen bekommen keine Symprome, aber können den Virus dennoch übertagen."), StateText(day: 176, author: "Task Force:", text: "Wir denken man sollte der Bevölkerung klarmachen, welche Möglichkeiten es gibt, um die Verbretiung von Covd-19 einzuschränken. Wichtige Maßnahmen sind hierbei das häufige Händewaschen und das Husten in die Ellenbogen."), StateText(day: 177, author: "Berater:", text: "Soll ich eine Presseerklärung mit diesen Maßnachmen und der Bitte zur Einhaltung veröffentlichen?")], actions: [PandemyAction(actionOption: "Presseerklärung", newState: state2811211111, changeAction: changeAction2811211111), PandemyAction(actionOption: "Keine Presseerklärung", newState: state2811211112, changeAction: changeAction2811211112)])
    
    let state28112112 = PandemyState(texts: [StateText(day: 100, author: "", text: "")], actions: nil)
    
    let state28112111 = PandemyState(texts: [StateText(day: 168, author: "Berater:", text: "Die Daten wurden über weinige Nachrichten-Kanäle herausgegeben. Die Bürger zeigen sich zwar verängstigt, aber freuen sich, dass die eigene Regierung als eine der ersten Regierungen konkrete Daten veröffentlicht."), StateText(day: 169, author: "Berater:", text: "Aufgrund der aufkommenden Angst blühen die Sozialen Meidien mit Falschmeldungen und Angstmache. Ein solches Verhalten bringt die ersten besorgten Brüger schon dazu, sich mit Vorräten einzudecken."), StateText(day: 170, author: "Task Force:", text: "In einem unserer Bundesländer wurde der erste Infiziert mit dem neuen Virus prognistiziert."), StateText(day: 171, author: "Berater:", text: "Aufgrund der publikation dieser Tatsache wird die Angst der Menschen immer größer."), StateText(day: 171, author: "Task Force:", text: "Da die Infizeirten Zahlen in unserem Nachbarland stark steigen würde wir empfhelen, dass die Grenzen zu dem Nachbarland bis auf weiteres nur aus bedeutenden Gründen überquert werden drüfen."), StateText(day: 172, author: "Berater:", text: "Wollen Sie eine solche Teilsperrung der Grenzen veranlasen? Es wird geschätzt, dass das einen haushaltsdefizit von rund 3 M. Euro pro Tag bedeuten kann.")], actions: [PandemyAction(actionOption: "Teilsperrung", newState: state281121111, changeAction: changeAction281121111(_:)), PandemyAction(actionOption: "Offene Grenzen", newState: state281121112, changeAction: changeAction281121112(_:))])
    
    let state2811212 = PandemyState(texts: [StateText(day: 100, author: "", text: "")], actions: nil)
    
    let state2811211 = PandemyState(texts: [StateText(day: 161, author: "Berater:", text: "Das Reiseverbot in das Ursprungsland des Viruses wurde ausgesprochen. Einige Bürger halten die Maßnahme zu übertrieben und das Vertrauen in Sie ist ein bisschen geschrumpft."), StateText(day: 162, author: "Gesundheitsminister:", text: "Trotz des Unmutes würde ich beaupten, dass Sie sich richitg entschieden haben. Es ist wichtig, dass das Virus nicht in das eigene Land kommt."), StateText(day: 165, author: "Task Force:", text: "Wir haben einige Symptome, aus den bereits bekannten Fällen in den Nachbarländern, herrausfinden können. Die häufigsten Symotme sind Husten, Fieber, Durchfall und Atemnot."), StateText(day: 166, author: "Task Force:", text: "Wir empfhelen, dass die Symtome öffentlich gemacht werden und gewarnt wird, dass die Anstckungsgefahr vermutlich hoch ist."), StateText(day: 167, author: "Berater:", text: "Wenn wir die Symtome öffentlich machen und vor dem Virus bereits warnen bevor es überhaupt Infizierte gibt könnte das zu erhöhtem Unmut führen. Sollen wir dennoch die Daten herrausgen?")], actions: [PandemyAction(actionOption: "Daten herausgeben", newState: state28112111, changeAction: changeAction28112111(_:)), PandemyAction(actionOption: "Daten behalten", newState: state28112112, changeAction: changeAction28112112)])
    
    let state281122 = PandemyState(texts: [StateText(day: 100, author: "", text: "")], actions: nil)
    
    let state281121 = PandemyState(texts: [StateText(day: 153, author: "Gesundheitsminister:", text: "Sehr gute Entscheidung! Ich werde mich sofort an die Arbeit machen eine geeigenete Gruppe an Personen zu finden, welche sich der Aufgabe annimmt."), StateText(day: 155, author: "Berater:", text: "Einige Nachbarländer haben bestötigt, dass der Virus sich schnell verbreitet und die Länder bereits die ersten infizierten haben."),StateText(day: 158, author: "Gesundheitsminister:", text: "Nach einigen Gesprächen mit führenden Forschern waren die meisten Forscher der Meindung, dass es noch zu wenige Informationen gibt, um bereits ein Mittel zu erforschen. Anstattdessen sollte versucht werden die Ausbreitung eindzudämmen. Vorallem sollte versucht werden, dass der Virus nicht in das eigene Land einfällt."), StateText(day: 159, author: "Gesundheitsminister:", text: "Es wurde vorgeschlagen, dass die Maßnahmen bereits getroffen werden sollen. Die Konkreteste Maßnahme ist ein Reiseverbot in das Ursprungsland des Viruses. Wollen Sie ein solches Verbot aussprechen oder wollen Sie es bei Reisewarnungen belassen?")], actions: [PandemyAction(actionOption: "Verbot", newState: state2811211, changeAction: changeAction2811211(_:)),PandemyAction(actionOption: "Reisewarnung", newState: state2811212, changeAction: changeAction2811212(_:))])
    
    let state28113 = PandemyState(texts: [StateText(day: 100, author: "", text: "")], actions: nil)
    
    let state28112 = PandemyState(texts: [StateText(day: 109, author: "Berater:", text: "Sehr gute Entscheidung! Ich werde mit dem Gesundheitsminister veranlassen, dass das Budget an den richtigen Stellen ankommt."), StateText(day: 110, author: "Gesundheitsminister:", text: "Ich finde es zwar schade, dass die Informationesbesorgung und mögliche Bekämpfung eines Virus nicht mehr wert ist, aber dennoch sind 5 M. Euro ein guter Anfang!"), StateText(day: 140, author: "Task Force:", text: "Aufgrund von leider nur sehr wenigen Informationen aus dem Infizierten Land ist unsere Arbeit sehr schleppend. Trotzdem sind wir uns sicher, dass die Verbreiung des Viruses sehr schnell geht. Bei weiteren Informationen melden wir uns erneut bei Ihnen."), StateText(day: 141, author: "Task Force:", text: "PS: Aufgrund der Zusammensetzung wird der Virus Covid-19 genannt."), StateText(day: 151, author: "Task Force:", text: "Ein Nachbarland des bereits infizierten Landes hat ebenfalls seinen ersten Infizierten gemeldet. Zusätzlich nimmt die Regierung des Ursprungslandes berits Maßnahmen zur Eindämmung des Viruses vor."), StateText(day: 152, author: "Gesundheitsminister:", text: "Wir könnten versuchen, dass eine Gruppe von Forschern ein Mittel zur Eindämmung des Viruses erforscht. Soll jetzt schon ein Mittel erforscht werden?")], actions: [PandemyAction(actionOption: "Mittel erforschen", newState: state281121, changeAction: changeAction281121(_:)), PandemyAction(actionOption: "Warten", newState: state281122, changeAction: changeAction281122(_:))])
    
    let state28111 = PandemyState(texts: [StateText(day: 100, author: "", text: "")], actions: nil)
    
    let state2812 = PandemyState(texts: [StateText(day: 100, author: "", text: "")], actions: nil)
    
    let state2811 = PandemyState(texts: [StateText(day: 103, author: "Gesundheitsminister:", text: "Task Force wurde erstellt! Die Kosten der Task Force belaufen sich vermutlich auf 8000 Euro pro Woche. Weitere Informationen folgen."), StateText(day: 105, author: "Berater:", text: "Es ist soweit. Es gibt weitere Informationen aus dem Infizierten Land! Die Regierung des Landes hat offizell und öffentlich bestätigt, dass es sich hierbei um einen noch nicht bekannt Virus handelt."), StateText(day: 106, author: "Berater:", text: "Der Virus wirkt sich laut des befallenen Landers wie eine Grippe aus. Zusäztlich ist die Regierung sicher, dass sie den Virus trotz nahe zu 100 infizierten im Griff hat."), StateText(day: 107, author: "Gesundheitminister:", text: "Ich denke, dass eine ernst zu nehmende Angelegeheit ist - sogar für unser Land. Wir könnte uns überlgen, ob wir die Mittel für Ärtze und Forschung erhöhen. Ich würde vorschlagen für den Anfang reicht eien Budgeterhöhung von 20 Millionen Euro. Was halten Sie davon?"), StateText(day: 108, author: "Berater:", text: "Ich denke eine Budgetehöhung ist sinnvoll, jedoch denke ich nicht, dass 20 Millionen Euro gerechtfertigt sind. Hier würde ich Vorschalgen 5 Millionen Euro zu investieren. Was meinen Sie?")], actions: [PandemyAction(actionOption: "0 Euro", newState: state28111, changeAction: changeAction28111(_:)), PandemyAction(actionOption: "5 M. Euro", newState: state28112, changeAction: changeAction28112(_:)), PandemyAction(actionOption: "20 M. Euro", newState: state28113, changeAction: changeAction28113(_:))])
    
    let state282 = PandemyState(texts: [StateText(day: 100, author: "", text: "")], actions: nil)
    
    let state281 = PandemyState(texts: [StateText(day: 93, author: "Gesundheitsminister:", text: "Danke, für die Weiterleitung der Informationen. Ich werde mich mit meinem Staab zusemmensetzen und Ihnen schnellstmöglich mit Rat und Tat zur Seite stehen."), StateText(day: 96, author: "Gesundheitsminister:", text: "Ich würde empfehlen, dass wir ein Task Force erstellen, welche sich in unserem Land mit den gegebenen Informationen arbeitet."), StateText(day: 98, author: "Berater:", text: "Dies wäre bestimmt ein guter Anfang."), StateText(day: 99, author: "Gesundheitsminister:", text: "Gerne stelle ich Ihnen seine solche Task Force zusemmen, welche im Anschluß an uns beide berichten kann.")], actions: [PandemyAction(actionOption: "Task Force", newState: state2811, changeAction: changeAction2811(_:)), PandemyAction(actionOption: "Keine Task Force", newState: state2812, changeAction: changeAction2812(_:))])
    
    let state28 = PandemyState(texts: [StateText(day: 85, author: "Berater:", text: "Dem Regierungsoberhaupt wurde angeboten, eine kleine Gruppe von inländischen Forschern zu schicken, um Informationen zu sammeln."), StateText(day: 89, author: "Berater:", text: "Die Regierung hat das Angebot leider abgeleht, da sie darauf hinweißen, dass die Forscher in den eigenen Land mindestens genau so gründlich arbeiten."), StateText(day: 91, author: "Berater:", text: "Wollen Sie den Gesundheitsminister in die Angelegeheit mit einbiden?")], actions: [PandemyAction(actionOption: "Einbinden", newState: state281, changeAction: changeAction281(_:)), PandemyAction(actionOption: "Nicht einbinden", newState: state282, changeAction: changeAction282(_:))])
       
    let state27 = PandemyState(texts: [StateText(day: 100, author: "", text: "")], actions: nil)
    
    let stateFourteen = PandemyState(texts: [StateText(day: 100, author: "", text: "")], actions: nil)
       
    let stateThirteen = PandemyState(texts: [StateText(day: 21, author: "Berater:", text: "Die Anfrage auf Auskunft, über das Virus-Gerücht, ist an das möglicherweiße befallene Land gesendet worden."), StateText(day: 24, author: "Berater:", text: "Leider dauert es einige Tage, bis die Informationen zusammengetragen werden können."), StateText(day: 25, author: "Berater;", text: "Das Nachbarland muss ebenfalls diese Gerüchte validieren."), StateText(day: 43, author: "Gesunheitsminister:", text: "In Forscherkreisen wird das Gerücht über den neuartigen Virus von vielen als wirkliche Bedrohung gesehen und von einigen als Hirngespenst."), StateText(day: 80, author: "Berater:", text: "Die Regierung hat bestätigt, dass ein derzeit noch unbekannter Virus aufgetreten ist, jedoch wird versichter, dass dieser bereits unter Kontrolle gebracht wurde."), StateText(day: 82, author: "Berater:", text: "Die Regierung vericht Sie immer auf den neusten Stand zu bringen."), StateText(day: 84, author: "Berater:", text: "Wollen Sie auf weitere Informationen der Regierung warten oder Ihre Hilfe zur aufklärung anbieten?")], actions: [PandemyAction(actionOption: "Abwarten", newState: state27, changeAction: changeAction26(_:)), PandemyAction(actionOption: "Hilfe anbieten", newState: state28, changeAction: changeAction27(_:))])
    
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
    gameState.money = -13700
}

func changeActionThree(_ gameState: GameState) {
}

func changeActionFour(_ gameState: GameState) {
    gameState.mood = 78.9
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

func changeAction281(_ gameState: GameState) {
    // tbd
}

func changeAction282(_ gameState: GameState) {
    // tbd
}

func changeAction2811(_ gameState: GameState) {
    gameState.money = -15700
}

func changeAction2812(_ gameState: GameState) {
    // tbd
}

func changeAction28111(_ gameState: GameState) {
    gameState.money = -15700
    gameState.mood = 79.8
}

func changeAction28112(_ gameState: GameState) {
    gameState.money = -5015700
    gameState.mood = 80.1
}

func changeAction28113(_ gameState: GameState) {
    gameState.money = -20015700
    gameState.mood = 79.9
}

func changeAction281121(_ gameState: GameState) {
    gameState.mood = 78.7
    gameState.money = -5071700
}

func changeAction281122(_ gameState: GameState) {
    // tbd
    gameState.mood = 78.7
    gameState.money = -5071700
}

func changeAction2811211(_ gameState: GameState) {
    gameState.mood = 76.7
    gameState.money = -5079700
}

func changeAction2811212(_ gameState: GameState) {
    gameState.mood = 78.9
}

func changeAction28112111(_ gameState: GameState) {
    gameState.mood = 77.2
    gameState.money = -5087700
    gameState.population.infected = 1
}

func changeAction28112112(_ gameState: GameState) {
    // tbd
}

func changeAction281121111(_ gameState: GameState) {
    gameState.mood = 73.2
    gameState.money = -8095700
    gameState.population.infected = 7
    gameState.population.healthy = 82000000 - gameState.population.dead - gameState.population.healed - gameState.population.infected
}

func changeAction281121112(_ gameState: GameState) {
    //tbd
    gameState.mood = 77.0
    gameState.money = -5095700
    gameState.population.infected = 12
    gameState.population.healthy = 82000000 - gameState.population.dead - gameState.population.healed - gameState.population.infected
}

func changeAction2811211111(_ gameState: GameState) {
    gameState.mood = 73.5
    gameState.money = -23103700
    gameState.population.infected = 46
    gameState.population.healthy = 82000000 - gameState.population.dead - gameState.population.healed - gameState.population.infected
}

func changeAction2811211112(_ gameState: GameState) {
    //tbd
    gameState.mood = 72.2
    gameState.money = -23103700
    gameState.population.infected = 55
    gameState.population.healthy = 82000000 - gameState.population.dead - gameState.population.healed - gameState.population.infected
}

func changeAction28112111111(_ gameState: GameState) {
    gameState.mood = 69.5
    gameState.money = -29127700
    gameState.population.infected = 122
    gameState.population.healthy = 82000000 - gameState.population.dead - gameState.population.healed - gameState.population.infected
}

func changeAction28112111112(_ gameState: GameState) {
    //tbd
    gameState.mood = 73.9
    gameState.money = -29127700
    gameState.population.infected = 197
    gameState.population.healthy = 82000000 - gameState.population.dead - gameState.population.healed - gameState.population.infected
}
