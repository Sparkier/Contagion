//
//  HistoryElementTextView.swift
//  Contagion
//
//  Created by Alex Bäuerle on 21.03.20.
//  Copyright © 2020 Alex Bäuerle. All rights reserved.
//

import SwiftUI

struct HistoryElementTextView: View {
    let stateText: StateText
    @EnvironmentObject var gameState: GameState

    var body: some View {
        if daysElapsed(gameState: gameState) >= stateText.day {
            return AnyView(
                VStack(alignment: .leading) {
                    VStack(alignment: .leading) {
                        Text(stateText.author).bold().frame(maxWidth: .infinity, alignment: .leading)
                        Text(stateText.text)
                        }
                }.fixedSize(horizontal: false, vertical: true).padding()
                .background(Color(UIColor(named: "MessageColor")!))
                .clipShape(OuterBubble())
            )
        } else {
            return AnyView(EmptyView())
        }
    }
}

struct OuterBubble: Shape {
    func path(in rect: CGRect) -> Path {
        let bezierPath = UIBezierPath()
        bezierPath.move(to: CGPoint(x: 22, y: rect.height))
        bezierPath.addLine(to: CGPoint(x: rect.width-17, y: rect.height))
        bezierPath.addCurve(to: CGPoint(x: rect.width, y: rect.height-17), controlPoint1: CGPoint(x: rect.width-7.61, y: rect.height), controlPoint2: CGPoint(x: rect.width, y: rect.height-7.61))
        bezierPath.addLine(to: CGPoint(x: rect.width, y: 17))
        bezierPath.addCurve(to: CGPoint(x: rect.width-17, y: 0), controlPoint1: CGPoint(x: rect.width, y: 7.61), controlPoint2: CGPoint(x: rect.width-7.61, y: 0))
        bezierPath.addLine(to: CGPoint(x: 21, y: 0))
        bezierPath.addCurve(to: CGPoint(x: 4, y: 17), controlPoint1: CGPoint(x: 11.61, y: 0), controlPoint2: CGPoint(x: 4, y: 7.61))
        bezierPath.addLine(to: CGPoint(x: 4, y: rect.height-11))
        bezierPath.addCurve(to: CGPoint(x: 0, y: rect.height), controlPoint1: CGPoint(x: 4, y: rect.height-1), controlPoint2: CGPoint(x: 0, y: rect.height-1))
        bezierPath.addLine(to: CGPoint(x: -0.05, y: rect.height-0.01))
        bezierPath.addCurve(to: CGPoint(x: 11.04, y: rect.height-4.04), controlPoint1: CGPoint(x: 4.07, y: rect.height+0.43), controlPoint2: CGPoint(x: 8.16, y: rect.height-1.06))
        bezierPath.addCurve(to: CGPoint(x: 22, y: rect.height), controlPoint1: CGPoint(x: 16, y: rect.height), controlPoint2: CGPoint(x: 19, y: rect.height))
        bezierPath.close()
        return Path(bezierPath.cgPath)
    }
}
