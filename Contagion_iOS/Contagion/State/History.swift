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
    let state281121111121112211 = PandemyState(texts: [StateText(day: 100, author: "", text: "")], actions: nil)
    
    let state28112111112111222 = PandemyState(texts: [StateText(day: 100, author: "", text: "")], actions: nil)
    
    let state28112111112111221 = PandemyState(texts: [StateText(day: 256, author: "Berater:", text: "Herzlichen Glückwunsch! Sie haben die Gesundheitskrise sehr gut überstanden!"), StateText(day: 266, author: "Gesunheitsminister:", text: "Wenn Sie denken, dass das Land bereit ist, würde ich die Maßnahmen langsam wieder lockern.")], actions: [PandemyAction(actionOption: "Maßnahmen lockern", newState: state281121111121112211, changeAction: changeAction281121111121112211)])
    
    let state2811211111211122 = PandemyState(texts: [StateText(day: 224, author: "Berater:", text: "Die Tests können schneller als erwartet an andere Länder weiter gegeben werden, da es kaum noch Neuinfektionen gibt."), StateText(day: 227, author: "Task Force:", text: "Wir gehen davon aus, dass das die Maßnahmen im Moment alle so gerechtfertigt sind, jedoch sprechen die Zahlen für sich und wir glauben, dass die Maßnahmen in 2 Wochen wieder langsam gelockert werden können."), StateText(day: 232, author: "Gesundheitsminister:", text: "Die Zahlen der derzeit infizierten Personen gehen immer weiter runter. Dir Krankenhäuser melden bereits wieder freie Kapazitäten."), StateText(day: 235, author: "Berater.", text: "Da die derzeitige Lage gut für das Land aussieht, würde ich vorschlagen, dass die Task Force anderen Ländern zur Hilfe kommen kann, welche noch stärker mit dem Virus zu kämpfen haben. Sehen Sie das auch so?")], actions: [PandemyAction(actionOption: "Task Force schicken", newState: state28112111112111221, changeAction: changeAction28112111112111221), PandemyAction(actionOption: "Task Force behalten", newState: state28112111112111222, changeAction: changeAction28112111112111222)])
    
    let state2811211111211121 = PandemyState(texts: [StateText(day: 100, author: "", text: "")], actions: nil)
    
    let state281121111121112 = PandemyState(texts: [StateText(day: 212, author: "Berater:", text: "Die Empfehlung sich nicht in größeren Gruppen zu versammeln ist in der Bevölkerung gut angekommen. Das Vertrauen ist gestiegen und bis jetzt wird die Empfehlung auch meist umgesetzt."), StateText(day: 218, author: "Task Force:", text: "Aufgrund der Maßnahmen und des einfachen Testverfahrens gehen wir davon aus, dass die Kurve der Neuerkrankungen langsam abflacht. Um weitere Erkrankungen aus dem Ausland zu vermeiden würde wir Ihnen nahe legen, dass Sie das neue Testverfahren den Nachbarländern zur Unterstützung zukommen lassen."), StateText(day: 220, author: "Berater.", text: "Im Moment werden die Materialien für das neuartige Testverfahren in Hochtouren produziert. Derzeit ist die Nachfrage auch noch höher als das Angebot. Aus diesem Grund würde ich vorschlagen, dass erst in den kommenden Tagen die Nachbarländer beliefert werden. Was halten Sie davon?")], actions: [PandemyAction(actionOption: "Jetzt beliefern", newState: state2811211111211121, changeAction: changeAction2811211111211121), PandemyAction(actionOption: "Später beliefern", newState: state2811211111211122, changeAction: changeAction2811211111211122)])
    
    let state281121111121111 = PandemyState(texts: [StateText(day: 100, author: "", text: "")], actions: nil)
    
    let state28112111112112 = PandemyState(texts: [StateText(day: 100, author: "", text: "")], actions: nil)
    
    let state28112111112111 = PandemyState(texts: [StateText(day: 202, author: "Berater:", text: "Da viele andere Staaten viel zu spät konkretten Maßnahmen umgesetzt haben und somit viele Menschen nicht mehr zum Arbeiten gehen können bricht die Wirschaft immer stärker ein. Die meisten Zulieferer unserer Unternehmen aus dem Ausland sind bereits abgebrochen."), StateText(day: 204, author: "Berater:", text: "Viele Unternehmen schließen ganz bzw. ordnen Home Office für Ihre Mitarbeiter an. Dies könnte bei dem Kampf gegen den Virus helfen."), StateText(day: 207, author: "Task Force:", text: "Das finanziell unterstütze Unternehmen hat es geschafft das neue Test-Verfahren einsatzbereit zu machen. Jetzt können doppelt so viele Bürger getestet werden. Die infizierten Personen können anschließend unter Quarantäne gesetzt werden, um die Ausbreitung zu einem Ende zu führen."), StateText(day: 209, author: "Gesundheitsminister:", text: "Leider haben wir jetzt auch den ersten Todesfall aufgrund des Covid-19 Viruses zu beklagen. Wir sollten ggf. weitere Maßnahmen ergreifen. Es sollte verboten werden, dass sich mehr als 5 Personen treffen, um dem Virus gar nicht erst die Chance zu geben, dass er sich ausbreitet."), StateText(day: 211, author: "Berater:", text: "Ich denke ein Versammlungsverbot wäre der Falsche weg, da es sein kann, dass sich die Bevölkerung nicht daran hält. Ich würde vorschlagen, dass eine Empfehlung ausgesprochen wird.")], actions: [PandemyAction(actionOption: "Ausgangsverbot", newState: state281121111121111, changeAction: changeAction281121111121111), PandemyAction(actionOption: "Empfehlung", newState: state281121111121112, changeAction: changeAction281121111121112)])
    
    let state2811211111212 = PandemyState(texts: [StateText(day: 100, author: "", text: "")], actions: nil)
    
    let state2811211111211 = PandemyState(texts: [StateText(day: 198, author: "Berater", text: "Die Bevölkerung versteht nicht ganz, warum Schulen und Kindergärten geschlossen werden soll, jedoch die Grenzen offen bleiben. Zusätzlich haben viele Eltern Probleme zur Arbeit zu gehen, da die Kinder jetzt selbst betreut werden müssen. Dies hat das viel Vertrauen der Bürger gekostet und nicht alle Maßnahmen werden so konsequent umgesetzt wie erwartet und erhofft."), StateText(day: 200, author: "Berater:", text: "Der öffentliche Druck wird sehr hoch und die meisten anderen Staaten haben die Grenzen ebenfalls schon geschlossen. Sollen die Grenzen dennoch offen bleiben?")], actions: [PandemyAction(actionOption: "Grenzen schließen", newState: state28112111112111, changeAction: changeAction28112111112111), PandemyAction(actionOption: "Offene Grenzen", newState: state28112111112112, changeAction: changeAction28112111112112)])
    
    let state281121111122 = PandemyState(texts: [StateText(day: 100, author: "", text: "")], actions: nil)
    
    let state281121111121 = PandemyState(texts: [StateText(day: 189, author: "Berater.", text: "Dem Unternehmen wird die geforderte Summe bereitgestellt. Es wird damit gerechnet, dass in einigen Wochen das Test-Verfahren bereit ist."), StateText(day: 191, author: "Gesundheitsminister:", text: "Wie vor einigen Tagen bereits angesprochen sollten wir die Kapazitäten in der Versorgung erhöhen."), StateText(day: 192, author: "Berater;", text: "Ich habe dem Gesundheitsminister darum gebeten einige Vorschläge zur Kapazitätserhöhung zu machen. Er wird in den kommenden Tagen mit konkreten Vorschlägen auf Sie zukommen."), StateText(day: 194, author: "Task Force:", text: "Die erste Person im Inland wurde von Covid-19 geheilt."),StateText(day: 196, author: "Berater:", text: "Einige Nachbarstaaten haben Schließungen von Hochschulen, Schulen und Kindergärten eingeführt. Wollen Sie alle ebenfalls eine solche Maßnahme ergreifen?")], actions: [PandemyAction(actionOption: "Schulschließung", newState: state2811211111211, changeAction: changeAction2811211111211), PandemyAction(actionOption: "Offene Schulen", newState: state2811211111212, changeAction: changeAction2811211111212)])
    
    let state28112111112 = PandemyState(texts: [StateText(day: 181, author: "Berater:", text: "Das offen Lassen der Grenzen ist zwar bei einigen Bürgern gut angekommen, jedoch vermuten viele Wissenschaftler, dass dies zur weiteren Ausbreitung von Covid-19 beiträgt."), StateText(day: 184, author: "Gesundheitsminister:", text: "In einigen anderen Ländern gibt es ein Kapazitätsengpass in den Krankenhäusern und Atemmasken. Es sollte darüber nachgedacht werden bereits jetzt Maßnahmen zu treffen, um das medizinische Personal und den Bestand an Hygiene-Artikel aufzustocken."),StateText(day: 187, author: "Task Force:", text: "Ein im Inland ansässiges Unternehmen steht vermutlich kurz vor der Entdeckung eines besseren Testverfahrens, welches den Test-Prozess halbieren würde. Somit könnte man doppelt so viele Leute testen wie aktuell."), StateText(day: 188, author: "Berater:", text: "Das Unternehmen bräuchte zur Weiterentwicklung finanzielle Unterstützung von rund 19 M. Euro soll eine solche Summe an das Unternehmen gegeben werden?")], actions: [PandemyAction(actionOption: "Unterstzützen", newState: state281121111121, changeAction: changeAction281121111121), PandemyAction(actionOption: "Nicht unterstzützen", newState: state281121111122, changeAction: changeAction281121111122)])
    
    let state28112111111 = PandemyState(texts: [StateText(day: 100, author: "", text: "")], actions: nil)
    
    let state2811211112 = PandemyState(texts: [StateText(day: 100, author: "", text: "")], actions: nil)
    
    let state2811211111 = PandemyState(texts: [StateText(day: 178, author: "Gesundheitsminister:", text: "Die Infizierten zahlen im In- und Ausland steigen stark. Als tragische Neuigkeiten steigen die Zahlen der Toten in den schon Länger infizierten Ländern ebenfalls rasant."), StateText(day: 179, author: "Berater:", text: "Experten zufolge hat sich die Pressekonferenz gut auf die aktuelle Situation ausgewirkt, da viele die Maßnahmen ernst nehmen steigt die Infizierten zahl langsamer als in anderen Ländern."), StateText(day: 180, author: "Berater:", text: "Um die dennoch steigenden Zahlen einzuschränken, sollten wir den nächsten Schritt überlegen. Hierzu kam der Vorschlag, dass die Grenzen zu allen anderen Nachbarstaaten ebenfalls teil gesperrt werden sollen. Wollen Sie das umsetzen oder denken Sie, dass diese Maßnahme den Finanziellen und Gedulds-Rahmen sprengen würde?")], actions: [PandemyAction(actionOption: "Weitere Teilsperrungen", newState: state28112111111, changeAction: changeAction28112111111), PandemyAction(actionOption: "Abwarten", newState: state28112111112, changeAction: changeAction28112111112)])
    
    let state281121112 = PandemyState(texts: [StateText(day: 100, author: "", text: "")], actions: nil)
    
    let state281121111 = PandemyState(texts: [StateText(day: 173, author: "Berater:", text: "Die Teilsperrung ab dem heutigen Tage wird an der einen Grenze durchgeführt. Einige Personen halten diesen Schritt für völlig überzogen."), StateText(day: 174, author: "Gesundheitsminister:", text: "Die Teilsperrung wird uns bestimmt sehr hilfreich sein. Ich vermute wir haben den Virus bereits im Griff. Herzlichen Glückwunsch Sie haben die Lage sehr gut eingeschätzt!"), StateText(day: 175, author: "Task Force:", text: "Aufgrund der Daten aus den anderen Ländern können wir den Virus besser und besser einschätzen. Hier ein paar neue Erkenntnisse: 1. Der Virus ist speziell für ältere Menschen und Menschen mit Vorerkrankung sehr gefährlich. Im Umkehrschluss besteht die Gefahr bei jungen Menschen eher weniger. 2. Der Virus verbreiter sich sehr schnell und manche Personen bekommen keine Symptome, aber können den Virus dennoch Übertagen. 3. Das Testverfahren auf den Virus dauert sehr lange und kann nur mit einer begrenzten Anzahl an Personen durchgeführt werden."), StateText(day: 176, author: "Task Force:", text: "Wir denken man sollte der Bevölkerung klarmachen, welche Möglichkeiten es gibt, um die Verbreitung von Covd-19 einzuschränken. Wichtige Maßnahmen sind hierbei das häufige, mindestens 30-Sekunden-lange Händewaschen und das Husten in die Ellenbogen."), StateText(day: 177, author: "Berater:", text: "Soll ich eine Presseerklärung mit diesen Maßnachmen und der Bitte zur Einhaltung veröffentlichen?")], actions: [PandemyAction(actionOption: "Presseerklärung", newState: state2811211111, changeAction: changeAction2811211111), PandemyAction(actionOption: "Keine Presseerklärung", newState: state2811211112, changeAction: changeAction2811211112)])
    
    let state28112112 = PandemyState(texts: [StateText(day: 100, author: "", text: "")], actions: nil)
    
    let state28112111 = PandemyState(texts: [StateText(day: 168, author: "Berater:", text: "Die Daten wurden über einige Nachrichten-Kanäle herausgegeben. Die Bürger zeigen sich zwar verängstigt, aber freuen sich, dass die eigene Regierung als eine der ersten Regierungen konkrete Daten veröffentlicht."), StateText(day: 169, author: "Berater:", text: "Aufgrund der aufkommenden Angst blühen die sozialen Medien mit Falschmeldungen und Angstmache. Ein solches Verhalten bringt die ersten besorgten Bürger schon dazu, sich mit Vorräten einzudecken."), StateText(day: 170, author: "Task Force:", text: "In einem unserer Bundesländer wurde der erste Infiziert mit dem neuen Virus prognostiziert."), StateText(day: 171, author: "Berater:", text: "Aufgrund der Publikation dieser Tatsache wird die Angst der Menschen immer größer."), StateText(day: 171, author: "Task Force:", text: "Da die infizierten Zahlen in unserem Nachbarland stark steigen werden wir empfehlen, dass die Grenzen zu dem Nachbarland bis auf Weiteres nur aus bedeutenden Gründen überquert werden dürfen."), StateText(day: 172, author: "Berater:", text: "Wollen Sie eine solche Teilsperrung der Grenzen veranlassen? Es wird geschätzt, dass das einen Haushaltsdefizit von rund 3 M. Euro pro Tag bedeuten kann.")], actions: [PandemyAction(actionOption: "Teilsperrung", newState: state281121111, changeAction: changeAction281121111(_:)), PandemyAction(actionOption: "Offene Grenzen", newState: state281121112, changeAction: changeAction281121112(_:))])
    
    let state2811212 = PandemyState(texts: [StateText(day: 100, author: "", text: "")], actions: nil)
    
    let state2811211 = PandemyState(texts: [StateText(day: 161, author: "Berater:", text: "Das Reiseverbot in das Ursprungsland des Viruses wurde ausgesprochen. Einige Bürger halten die Maßnahme zu übertrieben und das Vertrauen in Sie ist ein bisschen geschrumpft."), StateText(day: 162, author: "Gesundheitsminister:", text: "Trotz des Unmuts würde ich behaupten, dass Sie sich richtig entschieden haben. Es ist wichtig, dass das Virus nicht in das eigene Land kommt."), StateText(day: 165, author: "Task Force:", text: "Wir haben einige Symptome, aus den bereits bekannten Fällen in den Nachbarländern, herausfinden können. Die häufigsten Symptome sind Husten, Fieber, Durchfall und Atemnot."), StateText(day: 166, author: "Task Force:", text: "Wir empfehlen, dass die Symptome öffentlich gemacht werden und gewarnt wird, dass die Ansteckungsgefahr vermutlich hoch ist."), StateText(day: 167, author: "Berater:", text: "Wenn wir die Symptome öffentlich machen und vor dem Virus bereits davor warnen, bevor es überhaupt Infizierte gibt, könnte das zu erhöhtem Unmut führen. Sollen wir dennoch die Daten herausgeben?")], actions: [PandemyAction(actionOption: "Daten herausgeben", newState: state28112111, changeAction: changeAction28112111(_:)), PandemyAction(actionOption: "Daten behalten", newState: state28112112, changeAction: changeAction28112112)])
    
    let state281122 = PandemyState(texts: [StateText(day: 100, author: "", text: "")], actions: nil)
    
    let state281121 = PandemyState(texts: [StateText(day: 153, author: "Gesundheitsminister:", text: "Sehr gute Entscheidung! Ich werde mich sofort an die Arbeit machen eine geeignete Gruppe an Personen zu finden, welche sich der Aufgabe annimmt."), StateText(day: 155, author: "Berater:", text: "Einige Nachbarländer haben bestätigt, dass der Virus sich schnell verbreitet und die Länder bereits, die ersten infizierten haben."),StateText(day: 158, author: "Gesundheitsminister:", text: "Nach einigen Gesprächen mit führenden Forschern waren die meisten Forscher der Meinung, dass es noch zu wenige Informationen gibt, um bereits ein Mittel zu erforschen. Anstatt dessen sollte versucht werden die Ausbreitung einzudämmen. Vor allem sollte versucht werden, dass der Virus nicht in das eigene Land einfällt."), StateText(day: 159, author: "Gesundheitsminister:", text: "Es wurde vorgeschlagen, dass die Maßnahmen bereits getroffen werden sollen. Die konkreteste Maßnahme ist ein Reiseverbot in das Ursprungsland des Viruses. Wollen Sie ein solches Verbot aussprechen oder wollen Sie es bei Reisewarnungen belassen?")], actions: [PandemyAction(actionOption: "Verbot", newState: state2811211, changeAction: changeAction2811211(_:)),PandemyAction(actionOption: "Reisewarnung", newState: state2811212, changeAction: changeAction2811212(_:))])
    
    let state28113 = PandemyState(texts: [StateText(day: 100, author: "", text: "")], actions: nil)
    
    let state28112 = PandemyState(texts: [StateText(day: 109, author: "Berater:", text: "Sehr gute Entscheidung! Ich werde mit dem Gesundheitsminister veranlassen, dass das Budget an den richtigen Stellen ankommt."), StateText(day: 110, author: "Gesundheitsminister:", text: "Ich finde es zwar schade, dass die Informationsbesorgung und mögliche Bekämpfung eines Virus nicht mehr wert ist, aber dennoch sind 5 M. Euro ein guter Anfang!"), StateText(day: 140, author: "Task Force:", text: "Aufgrund von leider nur sehr wenigen Informationen aus dem infizierten Land ist unsere Arbeit sehr schleppend. Trotzdem sind wir uns sicher, dass die Verbreitung des Viruses sehr schnell geht. Bei weiteren Informationen melden wir uns erneut bei Ihnen."), StateText(day: 141, author: "Task Force:", text: "PS: Aufgrund der Zusammensetzung wird der Virus Covid-19 genannt."), StateText(day: 151, author: "Task Force:", text: "Ein Nachbarland des bereits infizierten Landes hat ebenfalls seinen ersten Infizierten gemeldet. Zusätzlich nimmt die Regierung des Ursprungslandes bereits Maßnahmen zur Eindämmung des Viruses vor."), StateText(day: 152, author: "Gesundheitsminister:", text: "Wir könnten versuchen, dass eine Gruppe von Forschern ein Mittel zur Eindämmung des Viruses erforscht. Soll jetzt schon ein Mittel erforscht werden?")], actions: [PandemyAction(actionOption: "Mittel erforschen", newState: state281121, changeAction: changeAction281121(_:)), PandemyAction(actionOption: "Warten", newState: state281122, changeAction: changeAction281122(_:))])
    
    let state28111 = PandemyState(texts: [StateText(day: 100, author: "", text: "")], actions: nil)
    
    let state2812 = PandemyState(texts: [StateText(day: 100, author: "", text: "")], actions: nil)
    
    let state2811 = PandemyState(texts: [StateText(day: 103, author: "Gesundheitsminister:", text: "Task Force wurde erstellt! Die Kosten der Task Force belaufen sich vermutlich auf 8000 Euro pro Woche. Weitere Informationen folgen."), StateText(day: 105, author: "Berater:", text: "Es ist so weit. Es gibt weitere Informationen aus dem infizierten Land! Die Regierung des Landes hat offiziell und öffentlich bestätigt, dass es sich hierbei um einen noch nicht bekannt Virus handelt."), StateText(day: 106, author: "Berater:", text: "Der Virus wirkt sich laut des befallenen Landes wie eine Grippe aus. Zusätzlich ist die Regierung sicher, dass sie den Virus trotz nahe zu 100 infizierten im Griff hat."), StateText(day: 107, author: "Gesundheitminister:", text: "Ich denke, dass eine ernst zu nehmende Angelegenheit ist - sogar für unser Land. Wir könnte uns überlegen, ob wir die Mittel für Ärzte und Forschung erhöhen. Ich würde vorschlagen für den Anfang reicht eine Budgeterhöhung von 20 Millionen Euro. Was halten Sie davon?"), StateText(day: 108, author: "Berater:", text: "Ich denke eine Budgeterhöhung ist sinnvoll, jedoch denke ich nicht, dass 20 Millionen Euro gerechtfertigt sind. Hier würde ich Vorschlagen 5 Millionen Euro zu investieren. Was meinen Sie?")], actions: [PandemyAction(actionOption: "0 Euro", newState: state28111, changeAction: changeAction28111(_:)), PandemyAction(actionOption: "5 M. Euro", newState: state28112, changeAction: changeAction28112(_:)), PandemyAction(actionOption: "20 M. Euro", newState: state28113, changeAction: changeAction28113(_:))])
    
    let state282 = PandemyState(texts: [StateText(day: 100, author: "", text: "")], actions: nil)
    
    let state281 = PandemyState(texts: [StateText(day: 93, author: "Gesundheitsminister:", text: "Danke, für die Weiterleitung der Informationen. Ich werde mich mit meinem Stab zusammensetzen und Ihnen schnellstmöglich mit Rat und Tat zur Seite stehen."), StateText(day: 96, author: "Gesundheitsminister:", text: "Ich würde empfehlen, dass wir ein Task Force erstellen, welche sich in unserem Land mit den gegebenen Informationen arbeitet."), StateText(day: 98, author: "Berater:", text: "Dies wäre bestimmt ein guter Anfang."), StateText(day: 99, author: "Gesundheitsminister:", text: "Gerne stelle ich Ihnen seine solche Task Force zusammen, welche im Anschluss an uns beide berichten kann.")], actions: [PandemyAction(actionOption: "Task Force", newState: state2811, changeAction: changeAction2811(_:)), PandemyAction(actionOption: "Keine Task Force", newState: state2812, changeAction: changeAction2812(_:))])
    
    let state28 = PandemyState(texts: [StateText(day: 85, author: "Berater:", text: "Dem Regierungsoberhaupt wurde angeboten, eine kleine Gruppe von inländischen Forschern zu schicken, um Informationen zu sammeln."), StateText(day: 89, author: "Berater:", text: "Die Regierung hat das Angebot leider abgelehnt, da sie darauf hinweisen, dass die Forscher in den eigenem Land mindestens genau so gründlich arbeiten."), StateText(day: 91, author: "Berater:", text: "WWollen Sie den Gesundheitsminister in die Angelegenheit mit einbinden?")], actions: [PandemyAction(actionOption: "Einbinden", newState: state281, changeAction: changeAction281(_:)), PandemyAction(actionOption: "Nicht einbinden", newState: state282, changeAction: changeAction282(_:))])
       
    let state27 = PandemyState(texts: [StateText(day: 100, author: "", text: "")], actions: nil)
    
    let stateFourteen = PandemyState(texts: [StateText(day: 100, author: "", text: "")], actions: nil)
       
    let stateThirteen = PandemyState(texts: [StateText(day: 21, author: "Berater:", text: "Die Anfrage auf Auskunft, über das Virus-Gerücht, ist an das möglicherweise befallene Land gesendet worden."), StateText(day: 24, author: "Berater:", text: "Leider dauert es einige Tage, bis die Informationen zusammengetragen werden können."), StateText(day: 25, author: "Berater;", text: "Das Nachbarland muss ebenfalls diese Gerüchte validieren."), StateText(day: 43, author: "Gesunheitsminister:", text: "In Forscherkreisen wird das Gerücht über den neuartigen Virus von vielen als wirkliche Bedrohung gesehen und von einigen als Hirngespinst."), StateText(day: 80, author: "Berater:", text: "Die Regierung hat bestätigt, dass ein derzeit noch unbekannter Virus aufgetreten ist, jedoch wird versichert, dass dieser bereits unter Kontrolle gebracht wurde."), StateText(day: 82, author: "Berater:", text: "Die Regierung verspricht Sie immer auf den neusten Stand zu bringen."), StateText(day: 84, author: "Berater:", text: "Wollen Sie auf weitere Informationen der Regierung warten oder Ihre Hilfe zur Aufklärung anbieten?")], actions: [PandemyAction(actionOption: "Abwarten", newState: state27, changeAction: changeAction26(_:)), PandemyAction(actionOption: "Hilfe anbieten", newState: state28, changeAction: changeAction27(_:))])
    
    let stateTwelve = PandemyState(texts: [StateText(day: 100, author: "", text: "")], actions: nil)
       
    let stateEleven = PandemyState(texts: [StateText(day: 100, author: "", text: "")], actions: nil)
    
    let stateTen = PandemyState(texts: [StateText(day: 100, author: "", text: "")], actions: nil)
       
    let stateNine = PandemyState(texts: [StateText(day: 100, author: "", text: "")], actions: nil)
    
    let stateEight = PandemyState(texts: [StateText(day: 100, author: "", text: "")], actions: nil)
    
    let stateSeven = PandemyState(texts: [StateText(day: 100, author: "", text: "")], actions: nil)
    
    let stateSix = PandemyState(texts: [StateText(day: 16, author: "Gesundheitsminister:", text: "Schade! Ich denke, dass die Umsetzung der Idee gut geworden wäre."), StateText(day: 17, author: "Gesundheitminister:", text: "Eine kleine Umfrage meiner Berater hat gezeigt, dass die Gesetzeseinführung positiv bei der Bevölkerung angekommen wäre. Ich komme zu einer späteren Zeit nochmals auf Sie zurück."), StateText(day: 18, author: "Gesundheitsminister:", text: "Meinen Mitarbeitern zufolge, welcher auf der Konferenz waren, soll es ein neues Virus geben. Noch ist nichts näheres bekannt."), StateText(day: 19, author: "Gesundheitsminister:", text: "Das neuartige Virus soll in einem nahegelegten Land entdeckt worden sein."), StateText(day: 20, author: "Berater:", text: "Sollen Informationen zu dem neuen Virus aus dem betroffenen Land erfragt werden oder soll auf eine offizielle Stellungnahme gewartet werden?")], actions: [PandemyAction(actionOption: "Informationen erfragen", newState: stateThirteen, changeAction: changeActionTwelve(_:)), PandemyAction(actionOption: "Stellungnahme abwarten", newState: stateFourteen, changeAction: changeActionThirteen(_:))])
    
    let stateFive = PandemyState(texts:[StateText(day: 16, author: "Gesunheitsminister;", text: "Sehr gute Entscheidung! Ich werde mich in den kommenden Tagen nochmals bei Ihnen melden, wie es weiter gehen wird."), StateText(day: 17, author: "Berater:", text: "Der Gesundheitsminister hat das Impfpflichtvorhaben ohne Zustimmung öffentlich gemacht. Den meisten Bürgern ist die Idee egal, jedoch gibt es einen kleinen Teil, welche die Idee ganz und gar nicht mögen."), StateText(day: 18, author: "Gesundheitsminister:", text: "Wir haben ein Problem! Im ganzen Land wurden Demonstrationen gegen die Impfpflicht angesetzt! Sogenannte Impfgegner wollen für eine Selbstbestimmung auf die Straßen gehen."), StateText(day: 19, author: "Berater:", text: "Wir können entweder den Gesetzesentwurf umformulieren oder wir könnten den Bürgern entgegentreten, um Ihnen die Situation zu verdeutlichen.")], actions: [PandemyAction(actionOption: "Gesetzentwurf anpassen", newState: stateEleven, changeAction: changeActionTen(_:)), PandemyAction(actionOption: "Gesetzentwurf lassen", newState: stateTwelve, changeAction: changeActionNine(_:))])
    
    let stateFour = PandemyState(texts: [StateText(day: 19, author: "Berater:", text: "Es wird vorerst keine Task Force erstellt. Wäre möglicherweise auch unnötig."), StateText(day: 34, author: "Berater:", text: "Euer Gesundheitsminister macht in der Öffentlichkeit mehr und mehr Stimmung für ein Gesetzt, welches eine Impfpflicht einführt."), StateText(day: 35, author: "Berater:", text: "Ich denke es wäre sinnvoll, wenn Sie den Gesundheitsminister darauf ansprechen würden.")], actions: [PandemyAction(actionOption: "Gesundheitsminister ansprechen", newState: stateNine, changeAction: changeActionEight(_:)), PandemyAction(actionOption: "Kein Prozess", newState: stateTen, changeAction: changeActionNine(_:))])
    
    let stateThree = PandemyState(texts: [StateText(day: 18, author: "Berater:", text: "Die Task Force wurde eingerichtet und hat ein wöchentliches Budget von 5000 €."), StateText(day: 19, author: "Konferenz-Forscher:", text: "Vielen Dank für Ihr Vertrauen! Wir melden und bei weiteren Fortschritten."), StateText(day: 21, author: "Konferenz-Forscher:", text: "Gerüchten zufolge soll es einen neuen Virus geben. Über diesen Virus ist jedoch noch nichts bekannt. Weitere Informationen folgen."), StateText(day: 22, author: "Konferenz-Forscher:", text: "Der neuartige Virus soll in einem nahegelegenen Land entdeckt worden sein."), StateText(day: 23, author: "Berater:", text: "Sollen Informationen zu dem neuen Virus aus dem betroffenen Land erfragt werden oder soll auf eine offizielle Stellungnahme gewartet werden?")], actions: [PandemyAction(actionOption: "Informationen erfragen", newState: stateSeven, changeAction: changeActionSix(_:)), PandemyAction(actionOption: "Stellungnahme abwarten", newState: stateEight, changeAction: changeActionSeven(_:))])
    
    let stateTwo = PandemyState(texts: [StateText(day: 9, author: "Gesundheitsminister:", text: "Hey, wie abgesprochen gehe ich heute auf die Konferenz. Ich werde mich danach nochmals mit weiteren Details melden. Bis dann!"), StateText(day: 10, author: "Gesundheitsminister:", text: "Die Konferenz ist sehr interessant. Es geht hauptsächlich um die Vermeidung von Krankheiten."), StateText(day: 11, author: "Gesundheitsminister:", text: "Die einfachsten und trotzdem effektiven Mittel zur Einschränkung der Verbreitung eines Viruses ist das häufige und intensive Händewaschen."), StateText(day: 12, author: "Gesundheitsmininster:", text: "Die Konferenz ist jetzt vorbei. Es gibt im Moment keine Maßnahmen die zu treffen sind. Bei einer Änderung der Sachlage können wir uns mit dem neuen Wissen nochmals zusammensetzen."), StateText(day: 13, author: "Berater:", text: "Die Reise, Hotel und Spesen für den Gesundheitsminister haben insgesamt 7700 Euro gekostet. Ich habe die Kosten auf das Health-Projekt gebucht."), StateText(day: 14, author: "Gesundheitsminister:", text: "Hallo, ich habe mich nochmals mit einigen Gesundheitsminister der anderen Ländern zusammengesetzt. Viele sind der Meinung, dass man eine Impfpflicht für die Prävention mancher Krankheiten einsetzen sollte."), StateText(day: 15, author: "Gesundheitsminister:", text: "Ich würde empfehlen eine solche Maßnahme umzusetzen. Ich kann den Prozess zur Einführung eines solchen Gesetztes anstoßen, falls dies gewollt ist?")], actions: [PandemyAction(actionOption: "Prozess anstoßen", newState: stateFive, changeAction: changeActionFour(_:)), PandemyAction(actionOption: "Kein Prozess", newState: stateSix, changeAction: changeActionFive(_:))])
    
    let stateOne = PandemyState(texts: [StateText(day: 9, author: "Berater:", text: "Alles klar! Im Anhang findest du deine gebuchte Zugverbindung und dein Hotel."),StateText(day: 10, author: "Zugunternehmen:", text: "Lieber Kunde, leider müssen wir Ihnen mitteilen, dass der von Ihnen gebuchte Zug 2,5 h Verspätung hat."), StateText(day: 11, author: "Berater:", text: "Es tut mir leid, dass du jetzt ein bisschen zu spät zur Konferenz kommst. War wohl doch zu knapp kalkuliert."), StateText(day: 12, author: "Gesundheitsminister:", text: "Hey, ich finde es schön zu sehen, dass du das Gesundheitsthema ernst nimmst und selbst auf Konferenzen wie diese gehst. Dennoch sind die Themen wohl ein bisschen zu Fachspezifisch?"), StateText(day: 13, author: "Berater:", text: "Die Reise, Hotel und Spesen haben insgesamt 8700 Euro gekostet. Ich habe es auf das Health-Projekt gebucht."),StateText(day: 14, author: "Konferenz-Forscher:", text: "Hallo, wir haben uns auf der Public Health Conference getroffen. Erinnern Sie sich noch an mich?"), StateText(day: 15, author: "Konferenz-Forscher:", text: "Hier noch einmal ein paar Informationen, zu dem Virus-Thema, über welcher wir gesprochen haben: In einem Nachbarland wurde ein neuartiges Virus entdeckt. Dieses bis jetzt noch nicht eingeschätzt werden kann."), StateText(day: 16, author: "Konferenz-Forscher:", text: "PS: Vergessen Sie nicht häufiges und gründliches Händewaschen schränkt die Verbreitung der meisten Vieren ein."), StateText(day: 17, author: "Berater:", text: "Der Ihnen von der Konferenz bekannte Forscher hat sich dazu bereit erklärt eine Gruppe zusammenzustellen, um das neuartige Vieren im Auge zu behalten. Ist das gewünscht?")], actions: [PandemyAction(actionOption: "Task Force aufstellen", newState: stateThree, changeAction: changeActionTwo(_:)), PandemyAction(actionOption: "Keine Task Force", newState: stateFour, changeAction: changeActionThree(_:))])
    
    let initialState = PandemyState(texts: [StateText(day: 1, author: "Berater:", text: "Hallo, schön, dass Sie das neue Kommunikationssystem gefunden haben. Hier finden Sie, als Oberhaupt des Landes, alle Informationen und Nachrichten, welche Sie betreffen können."), StateText(day: 2, author: "Berater:", text: "Ich bin Ihr persönlicher Berater und gebe Ihnen die mir zur Verfügung stehenden Informationen und kann einige Tätigkeiten für Sie übernehmen."), StateText(day: 3, author: "Berater:", text: "Oben in dem Kommunikationssystem können Sie die aktuellen Informationen des Landes (Bevölkerung, infizierte Bürger, geheilte Bürger, verstorbene Bürger) sehen. Des Weiteren werden dir Ausgaben, die Moral und das Datum angezeigt."), StateText(day: 4, author: "Berater:", text: "Versuche stets die Moral so weit oben wie möglich zu lassen, da anderenfalls die Bürger sich nicht an deine Maßnahmen halten."), StateText(day: 5, author: "Berater:", text: "Oh, da kommt schon die erste ggf. interessante Nachricht!"),StateText(day: 6, author: "Präsident Stefan Löfven, Schweden:", text: "Liebe Staatsoberhäupter, in der Zusammenarbeit mit einer Forschungsgruppe wollen wir Sie jährlichen Public Health Conference einladen. Mit freundlichen Grüßen Stefan Löfven"), StateText(day: 7, author: "Berater:", text: "Hey, hast du schon die Agenda der Public Health Conference gesehen? 3 Tage voll mit möglicherweise interessanten Informationen. Soll ich für dich eine Reise buchen oder den Gesundheitsminister bitten daran teilzunehmen?"), StateText(day: 8, author: "Berater:", text: "Sie können entweder selber an der Konferenz teilnehmen, oder den Gesundheitsminister schicken.")], actions: [PandemyAction(actionOption: "Selbst teilnehmen", newState: stateOne, changeAction: changeActionZero(_:)), PandemyAction(actionOption: "Minister schicken", newState: stateTwo, changeAction: changeActionOne(_:))])
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
    //tbd
    gameState.mood = 69.5
    gameState.money = -34127700
    gameState.population.infected = 122
    gameState.population.healthy = 82000000 - gameState.population.dead - gameState.population.healed - gameState.population.infected
}

func changeAction28112111112(_ gameState: GameState) {
    gameState.mood = 73.9
    gameState.money = -29127700
    gameState.population.infected = 197
    gameState.population.healthy = 82000000 - gameState.population.dead - gameState.population.healed - gameState.population.infected
}

func changeAction281121111121(_ gameState: GameState) {
    gameState.mood = 74.9
    gameState.money = -48191700
    gameState.population.infected = 487
    gameState.population.healed = 1
    gameState.population.healthy = 82000000 - gameState.population.dead - gameState.population.healed - gameState.population.infected
}

func changeAction281121111122(_ gameState: GameState) {
    //tbd
    gameState.mood = 72.9
    gameState.money = -29127700
    gameState.population.infected = 487
    gameState.population.healthy = 82000000 - gameState.population.dead - gameState.population.healed - gameState.population.infected
}

func changeAction2811211111211(_ gameState: GameState) {
    gameState.mood = 63.9
    gameState.money = -69247700
    gameState.population.healed = 3
    gameState.population.infected = 4571
    gameState.population.healthy = 82000000 - gameState.population.dead - gameState.population.healed - gameState.population.infected
}

func changeAction2811211111212(_ gameState: GameState) {
    gameState.mood = 71.5
    gameState.money = -69247700
    gameState.population.healed = 3
    gameState.population.infected = 5700
    gameState.population.healthy = 82000000 - gameState.population.dead - gameState.population.healed - gameState.population.infected
}

func changeAction28112111112111(_ gameState: GameState) {
    gameState.mood = 64.9
    gameState.money = -77271700
    gameState.population.infected = 6671
    gameState.population.healed = 7
    gameState.population.dead = 2
    gameState.population.healthy = 82000000 - gameState.population.dead - gameState.population.healed - gameState.population.infected
}

func changeAction28112111112112(_ gameState: GameState) {
    gameState.mood = 61.9
    gameState.money = -72271700
    gameState.population.infected = 7571
    gameState.population.healed = 9
    gameState.population.dead = 2
    gameState.population.healthy = 82000000 - gameState.population.dead - gameState.population.healed - gameState.population.infected
}

func changeAction281121111121111(_ gameState: GameState) {
    //tbd
    gameState.mood = 51.9
    gameState.money = -167271700
    gameState.population.infected = 6671
    gameState.population.healed = 152
    gameState.population.dead = 21
    gameState.population.healthy = 82000000 - gameState.population.dead - gameState.population.healed - gameState.population.infected
}

func changeAction281121111121112(_ gameState: GameState) {
    gameState.mood = 66.9
    gameState.money = -149343700
    gameState.population.infected = 19671
    gameState.population.healed = 125
    gameState.population.dead = 21
    gameState.population.healthy = 82000000 - gameState.population.dead - gameState.population.healed - gameState.population.infected
}

func changeAction2811211111211121(_ gameState: GameState) {
    gameState.mood = 67.3
    gameState.money = -229453700
    gameState.population.infected = 42671
    gameState.population.healed = 937
    gameState.population.dead = 45
    gameState.population.healthy = 82000000 - gameState.population.dead - gameState.population.healed - gameState.population.infected
}

func changeAction2811211111211122(_ gameState: GameState) {
    gameState.mood = 67.3
    gameState.money = -229453700
    gameState.population.infected = 42671
    gameState.population.healed = 937
    gameState.population.dead = 46
    gameState.population.healthy = 82000000 - gameState.population.dead - gameState.population.healed - gameState.population.infected
}

func changeAction28112111112111221(_ gameState: GameState) {
    gameState.mood = 72.3
    gameState.money = -349946700
    gameState.population.infected = 31258
    gameState.population.healed = 4237
    gameState.population.dead = 646
    gameState.population.healthy = 82000000 - gameState.population.dead - gameState.population.healed - gameState.population.infected
}

func changeAction28112111112111222(_ gameState: GameState) {
    // tbd
    gameState.mood = 70.8
    gameState.money = -349946700
    gameState.population.infected = 31258
    gameState.population.healed = 4237
    gameState.population.dead = 646
    gameState.population.healthy = 82000000 - gameState.population.dead - gameState.population.healed - gameState.population.infected
}

func changeAction281121111121112211(_ gameState: GameState) {
    gameState.mood = 72.3
    gameState.money = -467845700
    gameState.population.infected = 0
    gameState.population.healed = 48947
    gameState.population.dead = 3972
    gameState.population.healthy = 82000000 - gameState.population.dead - gameState.population.healed - gameState.population.infected
}
