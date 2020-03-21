//
//  HistoryElement.swift
//  Contagion
//
//  Created by Alex Bäuerle on 20.03.20.
//  Copyright © 2020 Alex Bäuerle. All rights reserved.
//

import SwiftUI

struct HistoryElementView: View {
    let state: HistoryElement

    var body: some View {
        Text(state.state.text)
    }
}

struct HistoryElementView_Previews: PreviewProvider {
    static var previews: some View {
        HistoryElementView(state: HistoryElement(state: initState(), selectedAction: nil))
    }
}
